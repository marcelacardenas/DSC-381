# Title     : Simulation Genetic Disorder
# Objective : Homework 1 - problem 11
# Created by: marcelacardenas
# Created on: 2/9/21

# A = person tests positive
# B = person has the disorder
# ~A = person tests negative (A-complement)
# ~B = person does not have disorder (B-complement)

#f simulates n tests to determine prob of B given A for any prob B
#for a known "prob of A given B" and known "prob of A given ~B"
f<-function(p){                    # function that assigns prob of B to p
n <- 10000                          # of tests
# create a sample of size n using elements of 0 and 1
# with probabilities of 1-p and p respectively
B <- sample(c(0,1), n, prob=c(1-p,p), replace=T)
sens <- 0.999                       # prob of A given B
spec <- 1 - 0.005                   # prob of ~A given ~B = 1 - prob of A given ~B
u <- runif(n)                       # n = Unif(0,1) r.v's
A <- ifelse(B==1, u<sens, u<1-spec) # generate A sample based on known info
nBA <- sum(B & A)                   # count occurrences of B intersect A
nA <- sum(A)                        # count occurrences of A
pBgivenA <- nBA/nA                  # calculate prob of B given A
return(pBgivenA)                   # return the result
}

# generate sequence of length x-values starting at from and ending at to
pgrid <- seq(from = 0.00, to = .5, length=1000)

# create container that will hold the y-values; default value is set to 0
y <- rep(0, 1000)

# calculate y-values for each x-value using function defined above
for(i in 1:1000)
  y[i] <- f(pgrid[i])

# create a plot of x (pgrid) and y (y) coordinates
# type indicates the type of graph to make "l" for line
# bty indicates the box type - "l" for L-shaped
# xlab and ylab are the labels for the x and y axes respectively
plot(pgrid, y, type="l", bty="l", xlab="Pr(B)", ylab="Pr(B|A)")

sens <- .999
# add horizontal line (y=sens) with lty (line type) of 2 (dashed)
# and color (col) of 2 (2nd color in the palette())
abline(h=sens,lty=2,col=2)

