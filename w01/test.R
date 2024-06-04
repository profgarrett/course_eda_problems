library(dplyr)
library(testthat)
library(this.path)

# Load answers
# Feel free to look in the working memory to see the correct answers.
#
# Be sure that the solution.RData file is in this folder.
this_directory <- this.dir()
setwd(this_directory)
load(file = 'solution.RData')


# Run each of the tests below to see if you have the correct answer for a problem.

test_that("q01", {
  testthat::expect_identical(q01_answer, q01_solution)
})


test_that("q02", {
  expect_equal(1, 1)
})
