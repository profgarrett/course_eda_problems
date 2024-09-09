# dply2 homework
# Updated by NDG 9/9/24
#
# Start by double-clicking on the solution Rdata file.
# That will load the solution for each question into working memory.
# Create your answers, and then run the test for each question to make sure
# that you have it correct.
library(dplyr)
library(testthat)


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

q01_answer


# Q2: Sum sales
# Create a new number with the sum of sales for all rows

q02_answer


# Q3: Avg with summarise
# Use summarise to create a new tibble showing the mean sales for all rows,
# and the sum_of_sales for all rows
#
# mean_of_sales sum_of_sales
#          22.8          228

q03_answer


# Q4: Avg by Region
# Same as above, but now also group by region
#
# region mean_of_sales sum_of_sales
#     CA          17.4           87
#     WV          28.2          141

q04_answer


# Q5: Avg by Region
# Same as above, but now also group by region AND odd
#
# region odd    mean_of_sales  sum_of_sales
# CA     FALSE           17.4            87
# WV     TRUE            28.2           141

q05_answer


# Q6: Count, Avg, Mean by Region
# Show the number of rows, mean sales, and median sales for each region
#
#  region number_of_rows mean_of_sales median_of_sales
#  CA                  5          17.4              20
#  WV                  5          28.2              34

q06_answer



# Q7: Add a filter
# Filter out all odd values
# Then, show the number of rows, mean sales, and median sales for each region
#
#  region number_of_rows mean_of_sales median_of_sales
#  WV                  5          28.2              34

q07_answer



# Q8: Add a filter
# Filter out all rows after 2003
# Then, show the number of rows and median sales for each year
#
# year number_of_rows median_of_sales
# 2001              2            16.5
# 2002              2            21.5
# 2003              2             6

q08_answer



# Q9: Add a sort
# As before, but now sort the results with the newest year on top
#
# year number_of_rows median_of_sales
# 2003              2             6
# 2002              2            21.5
# 2001              2            16.5

q09_answer



# Q10: Add a filter after group
# Show the number of rows and sum of sales for each year
# Filter out any that have sales below 30.
# The show with the biggest sales on top
#
#  year number_of_rows sum_of_sales
#  2005              2           86
#  2004              2           54
#  2002              2           43
#  2001              2           33

q10_answer



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
}