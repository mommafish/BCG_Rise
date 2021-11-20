<!-- Revision Section Starts -->
## Topics Covered
#### [Introduction to Pandas for Data Science](https://github.com/mommafish/BCG_Rise/tree/main/Python_Library/Intro_to_Pandas/1101_Introduction%20to%20Pandas)
* Import pandas as pd
* Load CSV file using pd.read_csv()
* Accessing Values for rows/columns
* Functions of .loc & .iloc
* Filtering with True and False
* Appending new rows/columns
* Changing Values in a dataframe
* Deleting a frame with axis= and inplace=
* Saving a dataframe with .to_csv()

#### [Intro to Pandas 2](https://github.com/mommafish/BCG_Rise/tree/main/Python_Library/Intro_to_Pandas/1102_Pandas2)
* Plot Graphs in Python 
  * import matplotlib.pyplot as plt
  * Plot Histogram with plt.hist()
  * Plot Line Graph with plt.plot(x,y)
  * Plot Scatter with plt.scatter(x,y)
  * Plot Bar with plt.bar(x,y)
  * Plot Pie with plt.pie(x,y)
  * Combine with Multiple plots (fig, ax = plt.subplots)
  * Save charts with fig.savefig('myplot.png')
* Read_csv with more detail
  * index_col=0 , usecols=['n']
  * df[''].map({True:'nn',False:'xx'})}
  * df.rename({'old_name':'something_new'}, axis=1)
  * np.where(df['table']>n, 'Correct','Else_Wrong') ## We can put multiple np.where in one line
  * .apply (def_function, axis=1)
  * .groupby().size() ## counts the number of entries/rows in each group
  * applying maths forumals to pandas with df.groupby(["example]).sum(["apple","orange"])
  * using .agg to formulate a chart. df.groupby(['Age','Gender']).agg(['min', 'max', 'mean']) ## .agg will look for numbers and ignore other data types
  * .stack() / .unstack() ## to stack the prescribed level(s) from columns to index. vice versa
  * .pivot / .pivot_table() ## fyi (index = x-axis), (values = y-axis), (aggfunc = 'mean')
  * pd.crosstab()

#### [Intro to Pandas 3](https://github.com/mommafish/BCG_Rise/tree/main/Python_Library/Intro_to_Pandas/1103_Pandas3)
* A recap of Intro to Pandas 1,2 using a problem statment on HDB to calculate pricing and show as a chart.
  * Using mathematic formulas in pandas such as .mean() and .std()
  * Filtering a column with a specific word, df[df['town']=='ANG MO KIO'] 
  * Creating new column with a IF/ELSE excel function (np.where)
  * Visualize a column by value_counts() including a % chart showing in a pie chart
  * Making use of groupby() to count a column and visualize in a bar chart.
  * Making use of groupby() to visualize a bar chart with a different x-axis and y-axis
  * Using groupby() to combine two data into x-axis and compare with one y-axis
  * Using .loc to compare difference between two data groups
  * Single out one condition using groupby(['combined x-axis').size()['combined y-axis']
