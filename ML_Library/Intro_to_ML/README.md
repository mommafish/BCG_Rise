<!-- Revision Section Starts -->
## Topics Covered


<!-- Add link to the sections -->
[1. Exploratory Data Analysis pt1](#Exploratory_Data_Analysis_for_Regression) <br>
[2. Exploratory_Data_Analysis pt2](#Exploratory_Data_Analysis_for_Classification) <br>
[3. Data Preparation and Cleaning](#Data_Preparation_and_Cleaning) <br>

<!-- ABOUT Section Ends -->


#### [Exploratory_Data_Analysis_for_Regression](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1130_Exploratory_Data_Analysis_(EDA)_for_regression_1)
* Recap on Understanding Data
    * Numeric, Discrete, Continous, Categorical, Nominal, Ranking
    * Describe() function to analyse min max count mean std etc..
* Manipulate Data inaccuracy.
    * isnull().sum() <mark># This is to identify null values for every column.</mark>
    * .str.replace('ERR','OK').astype(float) <mark># e.g. This is to replace columns 'ERR' into 'OK'<mark>
    * .fillna(0) <mark># This is to replace Null Columns with the 0.<mark>
    * .fillna(df.columnName.mean(),inplace = True)  <mark># This is to replace Null Columns with the Mean of a column.<mark>
* Visualizing Data into plots
    * fig, axarr = plt.subplots(3,2, figsize = (15,13))     <mark># e.g. Useful for creating Subplots to analyse multiple plots in one cell.<mark>


#### [Exploratory_Data_Analysis_for_Classification](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1201_Exploratory_Data_Analysis_(EDA)_for_Classification_pt2)
* Visualizing Data
    * using select_dtypes(include='object') <mark># This is to show non numeric objects<mark>
    * Various types of plotting methods using (plt-matplotlib and sns-Seaborn)
* Merge, join, concatenate and compare
    * pd.merge(left_dataframe, right_dataframe, on="key")   <mark># This is how to merge two columns indicating which is left or right and naming them using the key of the dataframe<mark>
    * result = left.join(right)     <mark># This is an example that shows .join function which joins left to right accordingly.<mark>
    * result = pd.concat([df1, df4], axis=1)    <mark># This is an example that shows .concat function to join columns from left to right respectively<mark>
    * df.compare(df2)   <mark># Allow you to compare two DataFrame or Series, respectively, and summarize their differences.<mark>


#### [Data_Preparation_and_Cleaning](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1202_Data_Preparation_and_Cleaning)
* tba

<!-- Revision Section Ends -->