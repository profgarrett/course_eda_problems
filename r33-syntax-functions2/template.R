# syntax function2 homework
# Updated by NDG 8/20/24
#
# Start by double-clicking on the solution Rdata file.
# That will load the solution for each question into working memory.
# Create your answers, and then run the test for each question to make sure
# that you have it correct.
library(dplyr)
library(testthat)
library(readr)


# Q1: Create q01_answer, a vector with the numbers 1-10
q01_answer <- c()


# Q2
# Create a new vector with the median, max, min, mean, and sum
# of the q01_answer vector.
# Save it as q02_answer
q02_answer <- c()


# Q3
# Parse the vector q03_strings readr's parse_integer function
q03_numbers <- c('1', '2', '3.1', 'x')
q03_answer


# Q4
# Round the number 3.51
q04_answer

# Q5
# Use seq to create a sequence from 50-100, incrementing by 3
q05_answer


# Q6
# Use rep to repeat the sequence 1-5 eight times.
s <- 1:5
q06_answer


# Q7
# Use paste0 to combine the first and last names with no spaces between
# the words
last <- 'Bob'
first <- 'Smith'
q07_answer


# Q8
# Use paste to combine the first and last names with a space between
# the words
last <- 'Bob'
first <- 'Smith'
q08_answer


# Q9
# Add 9 to the vector with append
q9 <- c(1, 2, 3)
q09_answer


# Q10
# Combine the two vectors with append
q10_answer


# -----------------------------------------------------------------------------------
#
# Run each of the tests below to see if you have the correct answer for a problem.
# Do not edit of the lines below, as my grading script expects them exactly as shown.
#
if (F) {
  testthat::expect_identical(q01_answer, q01_solution)
  testthat::expect_identical(q02_answer, q02_solution)
  testthat::expect_identical(q03_answer, q03_solution)
  testthat::expect_identical(q04_answer, q04_solution)
  testthat::expect_identical(q05_answer, q05_solution)
  testthat::expect_identical(q06_answer, q06_solution)
  testthat::expect_identical(q07_answer, q07_solution)
  testthat::expect_identical(q08_answer, q08_solution)
  testthat::expect_identical(q09_answer, q09_solution)
  testthat::expect_identical(q10_answer, q10_solution)
}