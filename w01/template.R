# HW 2
# Updated by NDG 8/23/23
library(dplyr)

# Q1: Create tibble
#
# You've been given the below table of data. Turn it into a tibble called q1_answer.
# Future questions will ask you to create new tibbles based off of this one.
# Do not modify this tibble in your submission, as you'll use it multiple times.
#
# Note that the last and first names labels are swapped. Don't fix that here - you will
# correct it lower down in the file.
#
# Use a boolean for the is_boss column.
# Use numeric datatypes for year and sales
#
# id last_name first_name year sales is_boss
# 1  Bob       Smith      1998 10,000  False
# 2  Tim       Jane       2000 25,000  False
# 3  Sarah     Estel      2010 83,000  True
# 4  Emily     Jones      1981  8,000  True
q01_answer


# Q2
#
# Create a new tibble called q2
# Base it off of q1_t. Match the table below.
# Hint: use select
#
# year, id, sales
# 1998,	1,	10000
# 2000,	2,	25000
# 2010,	3,	83000
# 1981,	4,	8000

q02_answer


# Q3
#
# Create a new tibble called q3_t
# Base it off of q1_t. Match the table below.
# Hint: use desc, arrange, and select
#
# year, id, sales
# 2010,	3,	83000
# 2000,	2,	25000
# 1998,	1,	10000
# 1981,	4,	8000


q03_t


# Q4
#
# Create a new tibble called q4_t
# Base it off of q1_t. Match the table below.
# Hint: use filter and select and arrange
#
# id, last_name
# 1,	Bob
# 4,	Emily
# 3,	Sarah


q04_t


# Q5
#
# Create a new tibble called q5_t
# Base it off of q1_t. Match the table below.
# Hint: look up r's paste function
#
#
# full_name
# Bob Smith
# Tim Jane
# Sarah Estel
# Emily Jones


q05_t


# Q6
#
# Create a new tibble called q6_t
# Base it off of q1_t. Match the table below.
#
# first,    last
# Bob,     Smith
# Tim,      Jane
# Sarah,   Estel
# Emily,   Jones


q06_t

# Q7
#
# Create a new tibble called q7_t
# Base it off of q1_t. Match the table below.
# Hint: use mutate and select
#
# name,  is_bob
# Bob,	   TRUE
# Tim,	  FALSE
# Sarah,	FALSE
# Emily,	FALSE

q07_t

# Q8
#
# Create a new tibble called q8_t
# Base it off of q1_t. Match the table below.
# Hint: use ifelse
#
# name, is_bob
# Bob,	   Yes
# Tim,	    No
# Sarah,	  No
# Emily,	  No

q08_t


# Q9
#
# Create a new tibble called q9_t
# Base it off of q1_t. Match the table below.
#
# is_id_over_2,   number_of_rows,    sum_of_sales
# No                            2           35000
# Yes                           2           91000


q09_t

# Q10
#
# Create a new tibble called q10_t
# Base it off of q1_t. Match the table below.
# Hint: use group_by and summarize.
#
# is_bob, sum_of_sales
# FALSE, 116000
# TRUE, 10000


q10_t