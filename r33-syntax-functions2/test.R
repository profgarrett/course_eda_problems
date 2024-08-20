library(dplyr)
library(testthat)
library(this.path)

# Load answers
# Feel free to look in the working memory to see the correct answers.
#
# Be sure that the solution.RData file is in this folder.
old_wd <- getwd()
setwd(this.dir())
load(file = 'solution.RData')
setwd(old_wd)

# Run each of the tests below to see if you have the correct answer for a problem.
test_that("q01", {
  testthat::expect_identical(q01_answer, q01_solution)
})
test_that("q02", {
  testthat::expect_identical(q02_answer, q02_solution)
})
test_that("q03", {
  testthat::expect_identical(q03_answer, q03_solution)
})
test_that("q04", {
  testthat::expect_identical(q04_answer, q04_solution)
})
test_that("q05", {
  testthat::expect_identical(q05_answer, q05_solution)
})
test_that("q06", {
  testthat::expect_identical(q06_answer, q06_solution)
})
test_that("q07", {
  testthat::expect_identical(q07_answer, q07_solution)
})
test_that("q08", {
  testthat::expect_identical(q08_answer, q08_solution)
})
test_that("q09", {
  testthat::expect_identical(q09_answer, q09_solution)
})
test_that("q10", {
  testthat::expect_identical(q10_answer, q10_solution)
})