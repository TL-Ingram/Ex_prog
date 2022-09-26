# load packages ----------------------------------------------------------------
shelf(tidyverse, tcltk)


# create dataframe -------------------------------------------------------------
exercise = c("bench_press", "deadlift", "squat")
sets = c("6", "8", "10")
reps = c("6", "8", "10")

  
list <- list(ex = "exercise", exx = "no", exxx = "ok") # names for testing only
test <- function(y) {
  x <- tk_select.list(exercise, multiple = T)
  y <- tk_select.list(sets, multiple = T)
  z <- tk_select.list(reps, multiple = T)
  nested <- list(x,y,z)
}

result <- lapply(list, test)
names(result) <- names(list)  # rename the results
D <- result  # replace the original values with the "updated" ones


df <- as.data.frame(do.call(cbind, D))
testss <- df %>%
  t() %>%
  as.data.frame()

# exercise, sets, reps, rest, weight
# maybe make it so it auto pulls in the ex, sets, reps from other script?