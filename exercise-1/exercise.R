# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
scores <- c(21, 24, 7, 24)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
lost <- c(42, 36, 3, 28)


# Combine your two vectors into a dataframe called `games`
games <- data.frame(scores, lost)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
difference <- scores - lost
difference

dim(games)
games[, 3] <- difference
# Create a new column "won" which is TRUE if the Seahawks won the game
won <- difference > 0
won
games[, 4] <- won
games

# Create a vector of the opponent names corresponding to the games played
names <- c("Bulls", "Giants", "49ers", "Titans")

# Assign your dataframe rownames of their opponents
rownames(games) <- names
games
# View your data frame to see how it has changed!
games
