# Introduction to Modeling

# Understand the key elements of the modeling process
#
# Help:
#   https://profgarrett.github.io/course_eda/ml00-model.html



#  model of picking rocks ------------------
#
# Each jar has a different number of good/bad rocks.
# You have to pay $1 per rock to pick from the jar.
# If you guess the jar with best ratio of good/bad, you get $100
# Maximize your return!
#
jar1
jar2

# Which is the best jar?
means
print(means)


# What is the probability that the difference is due to chance?
n_good_jar_1
n_bad_jar_1

# Statistical test to compare means of samples
observed <- matrix(c( n_good_jar_1, n_bad_jar_1,
                      n_good_jar_2, n_bad_jar_2, ),
                   nrow = 2, byrow = TRUE)


# Perform chi-square test (if we have +5 per cell)

# Perform Fisher's test (for smaller n)
#
# p-value: probability that the null hypothesis (no diff) is true
# confidence interval: 95% change the true value of the odds ratio
# odd ratio:
#     OR = (a *d) / (b *c )
#
#      Good Bad
# Jar1  a    b
# Jar2  c    d
#
# If OR >1, Jar1 is better
# If OR <1, Jar2 is better
# IF OR = 1, neither is better
