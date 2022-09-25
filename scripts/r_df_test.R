# load packages ----------------------------------------------------------------
shelf(tidyverse)

# create dataframe -------------------------------------------------------------
my_nested_list <- list(
  exercise = list("bench_press", "deadlift", "squat"),
  sets = list("3", "6", "9"),
  reps = list("3", "6", "9")
)

# Convert nested list to the dataframe by columns
df <- as.data.frame(do.call(cbind, my_nested_list))
df

companies <- c("AAA","BBB","CCC")
links <- c("c:/file1","c:/secret/file3","c:/file3")

i <- select.list(companies, title="Choose company")
1#df <- xmlToDataFrame(links[companies==i])

