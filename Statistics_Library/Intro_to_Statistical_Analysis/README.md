<!-- Revision Section Starts -->
## Topics_Covered


<!-- Add link to the sections -->
[1. Descriptive Stats](#Descriptive_Stats) <br>
[2. Basic Probability](#Basic_Probability) <br>
[3. Random Variables 1](#Random_Variables_1) <br> 
[4. Random Variables 2](#Random_Variables_2) <br> 
[5. Sampling & Confidence Intervals](#Sampling_&_Confidence_Intervals) <br> 
[6. Hypothesis Testing 1](#Hypothesis_Testing_1) <br> 
[7. Hypothesis Testing 2](#Hypothesis_Testing_2) <br> 
[8. Additional Notes](#Additional_Notes) <br> 
<!-- ABOUT Section Ends -->


#### [Descriptive_Stats](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1115_Descriptive_Stats)
* Using Pandas to find the mean, mode, median, etc
  * df['dataset'].mean()
  * df['dataset'].agg({'columnA':['mean'] , 'columnB':['mode'] , 'columnC':['median']}) 
  * df['dataset].describe()
* Measure of Variance
  * var(), std()
* Percentile and Quartiles
  * using stats.percentileofscore to show range


#### [Basic_Probability](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1116_Basic_Probability)
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


#### [Random_Variables_1](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1117_Random_Variables_1)
* Individual Assignment 1 (Bernoulli and Binomal Random Variables)
  * Bernoulli function (bernoulli(x))
  * Probability Mass Function (x.pmf)
  * Drawing 1000 random samples with function (x.rvs(1000))
  * Bionomial PMF and CDF
    * Defining a new function for Probability Mass Function
      * Meaning = Probability that the random variable X equals 1,
    * Defining a new function for Cumulative Mass Function
      * Meaning = Probability of a random variable X is less than or equal to that of the X.
    * Use binom.pmf to find the chance of a coin with HEADS out of 3 chances in 5 flips.
      * e.g = binom.pmf(3,5,0.5)


#### [Random_Variables_2](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1118_Random_Variables_2)
* Central Limit Theorem
  * Defining a distribution that is non-normal
  * Using Kurtosis to measure the "tailedness" of the probability distribution of a random variable (np.round(kurtosis(x),2)))
  * Using Skewness to measure of how much the probability distribution of a random variable deviates from the normal distribution. (np.round(skew(s),2)))
* Individual assignment 2 (Geometric and Poisson Random Variables)
  * Cumulative Geometric Probability
    * Refers to the probability that the value of a random variable falls within a specified range.
  * Geometric Random Variable
    * A random variable that takes the value k, a non-negative integer with probability pk(1-p)
    * The geometric random variable is used when one is modelling a series of experiments that have one of two possible outcomes - sucess or failure. 
  * Poisson Random Variable
    * A discrete random variable that counts the number of times a certain event will occur in a specific interval.


#### [Sampling_&_Confidence_Intervals](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1122_Sampling_Confidence_Intervals)
* Sample Distribution of a sample proportion
  * p-hat
    * The sample proportion, denoted. (pronounced p-hat), is the proportion of individuals in the sample who have that particular characteristic; in other words, the number of individuals in the sample who have that characteristic of interest divided by the total sample size (n)
* Mean and Standard Error of a Sampling Distribution of Proportion
  * Simulated Sampling Distribution
* Sampling Distribution of Sample Means
  * Analyse Mean and Varience of the Sampling Distribution
* Confidence Intervals
  * Displaying Sampling Mean
  * Displaying Sampling Standard Deviation
  * 95% Confidence Interval analysis
    * from scipy import stats


#### [Hypothesis_Testing_1](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1123_Hypothesis_Testing_1)
* Hypothesis testing refers to the formal procedures used by statisticians to accept or reject such statistical hypotheses. e.g a coin flip
  1. Null hypothesis, Ho: half the flips would result in Heads and half, in Tails
  2. Alternative hypothesis, Ha: the number of Heads and Tails would be very different
* Confidence Level and Significant Level
  * The significance level is a probability threshold that determines when you reject the null hypothesis. The confidence level is equivalent to 1 – the significance level
  * The probability to see a result to reject or accecpt the null hypothesis is known as the 'P-Value'.
* One Tailed
  * Null H0: x < 10
  * Alternate Ha: x > 10
* Two Tailed
  * Null H0: x = 10
  * Alternate Ha: 10 > x > 10
* Types of Hypothesis Test
  1. t-test <br>
    * Shapiro-Wilk Test
    * Levene's Test
  2. Z-test
  3. Chi-Square Test
  4. Mann-Whitney U Test
* Types of Erros in Hypothesis Testing
  1. Type I error - Reject Null when it is True 
  2. Type II error - Accept Null when it is False


#### [Hypothesis_Testing_2](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1124_Hypothesis_Testing_2)
* Individual Assignment (Hypothesis Testing-Lab)
  * Practice Questions to Accept or Reject Null Hypothesis for One Tailed and Two Tailed Test.
    * Z-Score
    * P-Value
    * T-test
    * ANOVA
    * Chi-Squared


#### [Additional_Notes](https://github.com/mommafish/BCG_Rise/tree/main/Statistics_Library/Intro_to_Statistical_Analysis/1125_Additional_Notes)
* Additional Notes for reference provided by Trainer.
  * Parametric vs Non-Parametric
  * Types of Data
    * Quantitative
      * Discrete
      * Continous
    * Qualitative
      * Nominal
      * Ordinal


[Back to Top](#Topics_Covered)
<!-- Revision Section Ends -->
