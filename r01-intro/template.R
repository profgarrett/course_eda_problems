# Introduction to R Studio
# Updated 6/4/24 by NDG

# This file is an overview of RStudio
#
# Help:
#   https://profgarrett.github.io/course_eda/r01-intro.html


# Files Management ------------------
#
# It's really critical to properly store and name your files
#   Create a folder for our class, and a new folder for
#   *every* project. For now, you don't need a project file,
#   but once we start using datafiles it'll be really important.
#
# Create a folder for this class
#   Add weekly folders
#     Add project folders as we get datafiles
#
# It should look like:
#
# My Documents
#   ACCT 426 (or BUDA 451)
#     Syllabus.docx
#     Week 01
#       rstudio_problem.R
#     Week 02
#       Syntax Problem
#         syntax_problem.R
#       Waterpark Problem
#         watepark_problem.R
#         hw2_solution.R



# Download the syllabus for the class, and put your R files into the
#   structure above. Take a screenshot, and email me.
# If you need help with a screenshot, go to
#   https://www.take-a-screenshot.org/




# RStudio features ------------------
#
#   Console for interactive input
#   Script editor for saving (be sure to re-run)
#   Shortcuts: control+enter to run the current line, or all selected.
#
# Shortcuts
#   alt - for <-
#   control s for saving
#   control shift l for linter (always save!)
#   control enter to run the current line

my_name
my_grade
paste(?, "expected grade is", ?)


# Create variables for each exam for Bob.
# Bob scored 80, 120, and 200 (out of 200)
# He got a perfect score on the other homework
# His lost 20 points on the project
#
# Create variables for his scores
# Use lowercase and underscores for variable names
# Calculate his total grade



# Install a library -----------------------
#
# We will use the testthat library
# Install it by clicking on the Packages tab on the bottom-right corner of rStudio
# Then click install, and type in the name.

library(testthat)

# Create a variable called roi that is equal to 0.23
# Then run the test_that to make sure that it matches our value.
#
# Then set it to "abc" to see the error message.



test_that('q_testthat', {
  testthat::expect_identical(roi, 0.23)
})



# More resources: -------------------
#
# Yarr is a gentle introduction to using R.
#   If you haven't done any programming before, this could be
#   a good way to get started.
#   https://bookdown.org/ndphillips/YaRrr/jumpin.html
#
# W3 Schools has a nice reference for R code. This is really
#   good for trying to lookup a specific feature.
#   https://www.w3schools.com/r/default.asp

