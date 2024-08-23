# Introduction to R Syntax
# Updated 7/17/24 by NDG
#
# This file is an overview of the syntax in R.
#
# Help: https://profgarrett.github.io/course_eda/r02-syntax.html
#
# Key shortcuts
#   alt - for <-
#   control s for saving
#   control enter to run the current line
library(testthat)


# R Syntax  ------------------
#

# Core
#   Comments start with #
#   Equality, try seeing if 1 is equal to 1, using 1-3 equal signs
#   Assignment, use <- and try =


# Arithmetic
#   Calculate ROI for an investment of $10,000 and growth of $5,000.
#   Calculate NPV for the investment, assuming a 3.5% discount rate and 2 years.
#       https://www.investopedia.com/terms/n/npv.asp


# Variables
#
#
# Variable names must:
#   Start with a letter (not number): 4q versus q4
#   Use _ characters, but not spaces.
#     . spaces work, but are not recommended
#   Are case-sensitive (i.e., revenue isn't the same as Revenue)
#   Use snake_case (not CamelCase or camel.case or CAMELCASE)
#
# We store things in variables
#   Text/strings: "abc"
#     'Single quotes' are not recommended because they are easy to
#     confuse with `backticks`
#   Numbers: 1 or 1.0
#     no special symbols: ,#$%
#   Logical: TRUE or FALSE
#
# Use <- to store (alt-) a value in a variable (not equal!)

# Numbers
x1
x2
# Text
x3    # always use double quotes

# Boolean
x4


# Make the tests pass!
test_that('variables_problem', {
  testthat::expect_identical(x1, 1.1)
  testthat::expect_identical(x2, 1)
  testthat::expect_identical(x3, "text")
  testthat::expect_identical(x4, T)
})


# Application Problem
#   Create variables with your age, major, car, number of units this term,
#   and years of experience in accounting.




# Complex variables  --------------------------
#
# Many different data types! I.E., lists, vectors, data.frame, tibbles
#   Subscripts use $ (not period)
#
# Vector
#   A numbered collection.
#   1 retrieves the first element, not 0
#
#   Vectors can only have one type.
z <- c(1, 2, 3)
z[1]

z <- c("a", 1, 1.1)  #changes all types to text


# Problem:
#   Create a vector called z with 3, 5, and 9.
#   Change the 5 into a 4.
#   Add one to the last item, and put it back into the final position
z

test_that('vector_problem', {
  testthat::expect_identical(z, c(3, 4, 10))
})



# Functions -------------------
#
# Much of the value of R comes from functions.
#   Functions are words (variables) that have code attached.
#   You activate them by calling them with parentheses.
# For example, sum(c(1,2,3)) adds the content of the vector
sum(c(1, 2, 3))

# Calculate the mean, median, and sum of a vector containing 1, 2, 3, and 4.







##############################################
# Application problem!
##############################################


# q01 Car TCO ------------------------------
#
# Calculate the following:
#   You are buying 2 cars, one for $10k and one for $20k
#   They will have lost 50% of their value in 5 years.
#   You expect to lose $500 in the sale process for them (combined)
#
#   Calculate the total cost of ownership for both cars as q01_answer
#
#   See if you get the same answer as q01_solution by running
#   the testthat code block. You should get a "Test passed"
#   result.
q01_answer


test_that('q01', {
  testthat::expect_identical(q01_answer, 14500)
})



# q02 NI and ROI -----------------------------
#
# Create variables for:
#   Revenue of $1k,
#   Cost of Goods Sold expenses of $500
#   Sales, general and administrative expenses of $200
#   1st Quarter Assets of $10,000
# Calculate NI and ROI and save them as the variables ni and roi.
#
# Create a q03_name variable for the company name of Bob O'Bryan Sports
#
# Create a q03_quota Boolean variable that records success.



test_that('q02', {
  testthat::expect_identical(q02_ni, 300)
  testthat::expect_identical(q02_roi, 0.03)
  testthat::expect_equal(18, stringr::str_length(q02_name))
  testthat::expect_type(q02_quota, "logical")
})



# q03 Vectors ------------------------------
sales <- c(100, 200, 300, 400, 500)

# Create a vector with expenses
# Y1 was 50, Y2 was 190, Y3 was 350, Y4 was 410, Y5 was 400.

# Create a new vector of q03_ni
# Note that we can add/subtract entire vectors, as long as they have a
#   matching length.


test_that('q03', {
  testthat::expect_identical(sum(q03_ni), 200)
})



# q04 Functions -------------------------------
#


# Now lets use some functions on the result of our q3_ni vector
# Calculate the sum, min, max, median, and mean values.
# Save each result as q04_...


test_that('q04', {
  testthat::expect_identical(q04_sum, 200)
  testthat::expect_identical(q04_min, -50)
  testthat::expect_identical(q04_max, 100)
  testthat::expect_identical(q04_median, 50)
  testthat::expect_identical(q04_mean, 40)
  testthat::expect_identical(q04_sum, 200)
})


# q05 Debug -----------------------------

# Time to fix some bugs!
sales revenue <-  123
expenses-cogs = 134
2012NetIncome <- salesrevenue - expenses-cogs

Q1 has lower results! This shows the median.
mean(1 2 43 )
average (2,3,2,0)
print( $1,000 )

# Coastal results
east.cost <- 120
# West
west_coast = 28
south_coast = $2,00
nrth_coats <-  '23'

# Create a vector
results <- (east.cost, west_coast, south_coast, north )




# Application problem!
#
# Let's model the pro/cons of a used v. new car
#
# Find two alternative cars, one new and one from CarMax.
# Use a 6-year period, with $5,000 downpayment, and 10% APR
# Find the average maintenance costs for your model from https://caredge.com/
#


# The library below calculates interest
source('http://biostatmatt.com/R/amortize.R')

# Use the *payment* function to calculate the monthly payment
# arguments:
#   loan amount: number
#   apr: interest rate as integer
#   months: period in months
payment(10000, 6, 12*6)

# Find the total interest paid on a loan
# Use summary(amortize(...))
#
# arguments:
#   loan amount: number
#   monthly payment: as calculated above
#   apr: interest rate as integer
#   months: period in months
summary(amortize(10000, 166, 6, 12*6))

# Replace summary with plot to show a graph
plot(amortize(10000, 309, 7, 36))