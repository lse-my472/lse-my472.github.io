## Some examples of vector and list operations in R
##
## Ken Benoit, 29 Oct 2019

# recycling
letters[1:5] == c("a")
# equivalent to
letters[1:5] == c("a", "a", "a", "a", "a")

# set operation
letters[1:5] %in% c("a", "d")
letters[1:5] %in% c("d", "a")

# not possible with "=="
"a" %in% letters
c("a", "ä") %in% letters

# splitting scores
scores <- c("3-2", "0-0", "13-1")
scoreslist <- strsplit(scores, "-", fixed = TRUE)
names(scoreslist) <- paste0("match", 1:3)
home <- sapply(scoreslist, "[", 1)
away <- sapply(scoreslist, "[", 2)
# equivalent to
sapply(scoreslist, function(y) y[1])
sapply(scoreslist, function(y) y[2])




