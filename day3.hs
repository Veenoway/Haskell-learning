-- In this exercise, it's Valentine's day and you are planning what to do with your partner. Your partner has lots of ideas, and is asking you to rate the ideas, in order to find the best activity.
-- The following ideas are proposed by your partner:
-- Playing a board game
-- Chill out
-- Watch a movie
-- Go to a restaurant
-- Take a walk
-- You have six tasks to help choose your Valentine's day activity.

1.
-- For each idea your partner proposes, you respond with one of three options: yes, no or maybe.
-- Define the Approval algebraic data type to represent these options for the following three cases: Yes, No or Maybe.

2.
-- Your partner has selected two possible restaurants: one based on Korean cuisine and the other based on Turkish cuisine.
-- Define the Cuisine algebraic data type to represent these restaurants as the following two cases: Korean or Turkish.

3.
-- There are tons of movies to choose from, so to narrow things down, your partner also lists their preferred genre.
-- Define the Genre algebraic data type to represent the following genres cases: Crime, Horror, Romance or Thriller.

4.
-- As mentioned, your partner has come up with five possible activities: playing a board game, chill out, watch a movie, go to a restaurant and taking a walk.
-- Define the Activity algebraic data type to represent these activity types:
-- BoardGame: no associated data.
-- Chill: no associated data.
-- Movie: has its Genre as associated data.
-- Restaurant: has its Cuisine as associated data.
-- Walk: has an Int representing the number of kilometers to walk as associated data.

5.
-- Finally, you're ready to rate your partner's ideas. This is how you feel about your partner's idea:
-- Playing a board game: no.
-- Chill out: no.
-- Watch a movie: yes if it is a romantic movie; otherwise, no.
-- Go to a restaurant: yes if the cuisine is Korean, maybe if it is Turkish.
-- Take a walk: yes if the walk is less than three kilometers; maybe if it is between three and five kilometers (inclusive); otherwise, no.
-- Implement a function named rateActivity that takes an Activity value and returns the Approval based on the above sentiments. 

data Approval = Yes | No | Maybe 
data Cuisine = Korean | Turkish 
data Genre = Crime | Horror | Romance | Thriller 
data Activity = BoardGame | Chill | Movie Genre | Restaurant Cuisine | Walk Int

rateActivity :: Activity -> Approval
rateActivity activity = 
  case activity of 
    BoardGame ->  No
    Chill -> No
    Movie  Romance -> Yes
    Movie _ -> No
    Restaurant Korean -> Yes
    Restaurant Turkish -> Maybe
    Walk distance -> rateWalkDistance distance

rateWalkDistance :: Int -> Approval
rateWalkDistance distance 
  | distance < 3 = Yes
  | distance <= 5 = Maybe
  | otherwise = No