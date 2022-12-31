import Text.XHtml (src)
-- Create a validator that alwways succeed
{-# INLINABLE mkValidator #-}
mkValidator :: Data -> Data -> Data -> ()
mkValidator _ _ _ = ()

-- Then  we have to compile it to Plutus 
validator :: Validator
validator = mkValidatorScript $$(PlutusTx.compile [||mkValidator||]) -- INLINABLE make mkValidator a script inside []

-- Computing the hash from the script
valHash :: Ledger.ValidatorHash
valHash = Scripts.validatorHash validator

-- Create address from hash
srcAddress :: Ledger.Address
srcAddress = ScriptAddress valHash

type GiftSchema =
    BlockchainActions
        .\/ Endpoint "give" Integer
        .\/ Endpoint "grab" ()

give :: (HasBlochchainActions s, AsContractError e) => Integer -> Contract w s e ()
give amount = do
    let tx = mustPayToOtherScript valHash (Datum $ Constr 0 []) $ Ada.lovelaceValueOf amount
    ledgerTx <- submitTx tx
    void $ awaitConfirmed $ txId ledgerTx
    logInfo @String $ printf "made a gift of %d lovelace" amount

grab :: forall w s e. (HasBlockchainActions s, AsContractError e) => Contract w s e ()
grab = do
    utxos <- utxoAt srcAddress
    let orefs = fst <$> Map.toList utxos 
        lookups = Contraints.unspentOutputs utxos 
                  Contraints.otherScript validator
        tx :: TxConstraints Void Void
        tx = mconcat [mustSpendScriptOutput oref $ Redeemer $ I 17 | oref <- orefs]
    ledgerTx <- submitTxConstraintsWith @Void lookups tx
    void $ awaitTxConfirmed $ txId ledgerTx
    logInfo @String $ "collected gifts"

endpoints :: Contract () GiftSchema Text ()
endpoints = (give' `select` grab') >> endpoints 
    where 
        give' = endpoint @"give" >>= give
        grab' = endpoint @"grab" >> grab

mkSchemaDefinitions ''GiftSchema
mkKnownCurrencies []