# dply1 homework
# Updated by NDG 7/18/24
#
# Start by double-clicking on the solution Rdata file.
# That will load the solution for each question into working memory.
# Create your answers, and then run the test for each question to make sure
# that you have it correct.
library(dplyr)
library(testthat)


# Q1: Create tibble
#
# You've been given the below table of data. Turn it into a tibble called q01_answer
# Future questions will ask you to create new tibbles based off of this one.
#
# Do not modify this tibble in your submission, as you'll use it multiple times.
#
# Note that the last and first names labels are swapped.
# Use a Boolean for the is_boss column.
# Use numeric datatypes for year and sales
#
# id last_name first_name year sales is_boss
# 1  Bob       Smith      1998 10,000  False
# 2  Tim       Jane       2000 25,000  False
# 3  Sarah     Estel      2010 83,000  True
# 4  Emily     Jones      1981  8,000  True


# Q2
#
# Create a new tibble called q02_answer
# Base it off of q01_answer. Match the table below.
# Hint: use select
#
# year, id, sales
# 1998,	1,	10000
# 2000,	2,	25000
# 2010,	3,	83000
# 1981,	4,	8000




# Q3
#
# Create a new tibble called q03_answer
# Base it off of q01_answer Match the table below.
# Hint: use desc, arrange, and select
#
# year, id, sales
# 2010,	3,	83000
# 2000,	2,	25000
# 1998,	1,	10000
# 1981,	4,	8000



# Q4
#
# Create a new tibble called q04_answer
# Base it off of q01_answer.  Match the table below.
# Hint: use filter and select and arrange
#
# id, last_name
# 1,	Bob
# 4,	Emily
# 3,	Sarah




# Q5
#
# Create a new tibble called q05_answer
# Base it off of q01_answer. Match the table below.
# Hint: look up r's paste function
#
#
# full_name
# Bob Smith
# Tim Jane
# Sarah Estel
# Emily Jones



# Q6
#
# Create a new tibble called q06_answer
# Base it off of q01_answer. Match the table below.
#
# first,    last
# Bob,     Smith
# Tim,      Jane
# Sarah,   Estel
# Emily,   Jones



# Q7
#
# Create a new tibble called q07_answer
# Base it off of q01_answer. Match the table below.
# Hint: use mutate and select
#
# name,  is_bob
# Bob,	   TRUE
# Tim,	  FALSE
# Sarah,	FALSE
# Emily,	FALSE



# Q8
#
# Create a new tibble called q08_answer
# Base it off of q01_answer. Match the table below.
# Hint: use ifelse
#
# name, is_bob
# Bob,	   Yes
# Tim,	    No
# Sarah,	  No
# Emily,	  No



# Q9
#
# Create a new tibble called q09_answer.
# Base it off of q01_solution. Match the table below.
#
# is_id_over_2,   number_of_rows,    sum_of_sales
# No                            2           35000
# Yes                           2           91000




# Q10
#
# Create a new tibble called q10_answer
# Base it off of q01_solution. Match the table below.
# Hint: use group_by and summarize.
#
# is_bob, sum_of_sales
# FALSE, 116000
# TRUE, 10000




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