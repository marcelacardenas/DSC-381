# DSC-381
Probability and Simulation Based Inference for Data Science (statistics-based course)


Book:  Probability and Computing (Randomized Algorithms and Probabilistic Analysis)

(book #1.13) A medical company touts its new test for a certain genetic disorder. The false negative rate is small: if you have the disorder, 
the probability that the test returns a positive result is 0.999. The false positive rate is also small: if you do not have the disorder, 
the probability that the test returns a positive result is only 0.005. Assume that 2% of the population has the disorder. 
If a person chosen uniformly from the population is tested and the result comes back positive, what is the probability that the person has the disorder?

## Genetic Disorder Problem 

In this problem, we do the following: 

Simulate the disease's test on a population of 10,000 who have the disease to determine the disease's presence.  Accuracy of 99.9% and a false positive rate of 0.5%

Next, we compare the test result to the known presence of the disease. Finally, we plot the outcome as the disease present in the population ranges from 0.01 to 0.50

Interpretation: As the disease's presence in the population increases, the probability of the test returning true positive increases exponentially, seemingly approaching the expected accuracy rate of 0.999 (99.9%).
