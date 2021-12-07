<!-- Revision Section Starts -->
## Topics Covered
#### [Descriptive Stats](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1115_Descriptive_Stats)
* Using Pandas to find the mean, mode, median, etc
  * df['dataset'].mean()
  * df['dataset'].agg({'columnA':['mean'] , 'columnB':['mode'] , 'columnC':['median']}) 
  * df['dataset].describe()
* Measure of Variance
  * var(), std()
* Percentile and Quartiles
  * using stats.percentileofscore to show range


#### [Basic Probability](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1116_Basic_Probability)
* Probability Basics (Please refer to '04-04-Probability')
  * eg. coin toss with heads or tails 
* Conditional Probability and Dependence
  * Independent Variable and Dependent Variable differences
  * P(A), P(B) ## The independent probabilities of A and B
  * P(A|B) ## The probability of event A occurring, given that event B occurs
    * P(A|B) =   p(B|A) * P(A) / P(B) 
  * P(B|A) ## The probability of event B depends on that of A happening.
    * P(B|A) = P(A and B) / P(A)
* Binomial Variables and Distributions
  * binomm = binom.pmf(k,n,p)
  * n = sample size
  * p = probability of success on an individual trail
  * x = range of data


<!-- Revision Section Ends -->