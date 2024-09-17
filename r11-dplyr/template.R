# Updated by NDG 9/17/24
library(dplyr)
library(testthat)
library(this.path)

# this_directory <- paste(this.dir(), '/../', sep = '')
# setwd(this_directory)

# Clear environment
# rm(list = ls())

######################################
# Part 1: Group By & Summarize
#######################################

# Starting tibble
# Do not modify!
t_start <- tibble(
  id = 1:10,
  odd = id %% 2 == 0,
  region = rep(c('CA', 'WV'),5),
  sales = c(23, 10, 4, 39, 2, 10, 20, 34, 38, 48),
  year = c(2001, 2001, 2002, 2002, 2003, 2003, 2004, 2004, 2005, 2005)
)


# Q1: Avg sales
# Create a new number with the mean sales for all rows
#
# Solution: 22.8
#
q01_answer


# Q2: Sum sales
# Create a new number with the sum of sales for all rows
#
# Solution: 228
#
q02_answer


# Q3: Avg with summarise
# Use summarise to create a new tibble showing the mean sales for all rows,
# and the sum_of_sales for all rows
#
# mean_of_sales sum_of_sales
#          22.8          228
#
q03_answer


# Q4: Avg by Region
# Same as above, but now also group by region
#
# region mean_of_sales sum_of_sales
#     CA          17.4           87
#     WV          28.2          141
#
q04_answer


# Q5: Avg by Region
# Same as above, but now also group by region AND the odd field
#
# region odd    mean_of_sales  sum_of_sales
# CA     FALSE           17.4            87
# WV     TRUE            28.2           141
#
q05_answer


# Q6: Count, Avg, Mean by Region
# Show the number of rows, mean sales, and median sales for each region
#
#  region number_of_rows mean_of_sales median_of_sales
#  CA                  5          17.4              20
#  WV                  5          28.2              34
#
q06_answer



# Q7: Add a filter
# Filter out all odd values
# Then, show the number of rows, mean sales, and median sales for each region
#
#  region number_of_rows mean_of_sales median_of_sales
#  WV                  5          28.2              34
#
q07_answer



# Q8: Add a filter
# Filter out all rows after 2003
# Then, show the number of rows and median sales for each year
#
# year number_of_rows median_of_sales
# 2001              2            16.5
# 2002              2            21.5
# 2003              2             6
#
q08_answer



# Q09: Add a filter after group
# Show the number of rows and sum of sales for each year
# Filter out any that have sales below 30.
# The show with the biggest sales on top
#
#  year number_of_rows sum_of_sales
#  2005              2           86
#  2004              2           54
#  2002              2           43
#  2001              2           33
#
q09_answer

######################################
# Part 2: Join
#######################################

# Starting tibbles
# Do not modify!
checks <- tibble(
  check_id = 1:5,
  vendor_id = c(2, 2, 2, 3, 5),
  profit = c(10, 20, 30, 40, 50)
)

vendors <- tibble(
  vendor_id = c(2, 3, 4, 9),
  state = c("CA", "TX", "TX", "VA")
)

states <- tibble(
  id = c("CA", "TX", "ID", "WV"),
  state = c("California", "Texas", "Idaho", "West Virginia"),
)

checks_with_nas <- tibble(
  profit = c(10, 20, 30, NA),
  area = c('Sales', 'HR', 'HR', 'IT')
)


# Q10: Inner Join
#
# Use an inner join to find all of the checks & vendors
#
# check_id vendor_id profit state
#       1         2     10 CA
#       2         2     20 CA
#       3         2     30 CA
#       4         3     40 TX
#
q10_answer

# Q11: Left Outer Join
#
# Use an left outer join to find all of the checks, even those
# not matching a vendor.
#
# check_id vendor_id profit state
#       1         2     10 CA
#       2         2     20 CA
#       3         2     30 CA
#       4         3     40 TX
#       5         5     50 NA
#
q11_answer


# Q 12: Join with rename
#
# Find all vendors, and then join to also
# have the state name.
#
# Rename the column used to join
# Then join
# Then rename states$state  to state_name
#
# vendor_id   id    state_name
#        2    CA    California
#        3    TX    Texas
#        4    TX    Texas
#
q12_answer

# Q13: Join & Summarise
#
# Find the number of vendors in each state.
# Start with vendors. Include all vendors, even
# those that are in a missing state
#
# Then, use group by and summarise.
#
# state_name     n
# California     1
# Texas          2
# NA             1

# Problem 3: Vendors
q13_answer

# Q14: Join & Summarise
#
# Start with checks.
# Then join to vendors
# Group by CA/TX/ETC...
#
# Show the count, sum of dollars, and average order by vendor's state
# Remove any states with NA
#
# state count profit_sum profit_mean
# CA        3         60          20
# TX        1         40          40
# NA        1         50          50
#
q14_answer



# Q15: Remove NA
#
# Start with the checks_with_nas tibble
# Summarise by area, showing the count, sum, and mean
# Have your sum, mean, etc.. function remove NA values.
#
# Remove IT
# Sort by sum
#
# area      n  mean   sum
# Sales     1    10    11
# HR        2    25    51
#
q15_answer

# -----------------------------------------------------------------------------------
#
# Run each of the tests below to see if you have the correct answer for a problem.
# Do not edit of the lines below, as my grading script expects them exactly as shown.
#
if (F) {
  testthat::expect_equal(q01_answer, q01_solution)
  testthat::expect_equal(q02_answer, q02_solution)
  testthat::expect_equal(q03_answer, q03_solution)
  testthat::expect_equal(q04_answer, q04_solution)
  testthat::expect_equal(q05_answer, q05_solution)
  testthat::expect_equal(q06_answer, q06_solution)
  testthat::expect_equal(q07_answer, q07_solution)
  testthat::expect_equal(q08_answer, q08_solution)
  testthat::expect_equal(q09_answer, q09_solution)
  testthat::expect_equal(q10_answer, q10_solution)
  testthat::expect_equal(q11_answer, q11_solution)
  testthat::expect_equal(q12_answer, q12_solution)
  testthat::expect_equal(q13_answer, q13_solution)
  testthat::expect_equal(q14_answer, q14_solution)
  testthat::expect_equal(q15_answer, q15_solution)
}