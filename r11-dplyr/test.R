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
  testthat::expect_equal(q01_answer, q01_solution)
})
test_that("q02", {
  testthat::expect_equal(q02_answer, q02_solution)
})
test_that("q03", {
  testthat::expect_equal(q03_answer, q03_solution)
})
test_that("q04", {
  testthat::expect_equal(q04_answer, q04_solution)
})
test_that("q05", {
  testthat::expect_equal(q05_answer, q05_solution)
})
test_that("q06", {
  testthat::expect_equal(q06_answer, q06_solution)
})
test_that("q07", {
  testthat::expect_equal(q07_answer, q07_solution)
})
test_that("q08", {
  testthat::expect_equal(q08_answer, q08_solution)
})
test_that("q09", {
  testthat::expect_equal(q09_answer, q09_solution)
})
test_that("q10", {
  testthat::expect_equal(q10_answer, q10_solution)
})
test_that("q11", {
  testthat::expect_equal(q11_answer, q11_solution)
})
test_that("q12", {
  testthat::expect_equal(q12_answer, q12_solution)
})
test_that("q13", {
  testthat::expect_equal(q13_answer, q13_solution)
})
test_that("q14", {
  testthat::expect_equal(q14_answer, q14_solution)
})
test_that("q15", {
  # An earlier version had a typo causing the sum to +1
  # Test w/o that
  # testthat::expect_equal(q15_answer, q15_solution)
  testthat::expect_equal(sum(q15_answer$mean), sum(q15_solution$mean))
  testthat::expect_equal(nrow(q15_answer), nrow(q15_solution))
  testthat::expect_equal((q15_answer$area), (q15_solution$area))

})

