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
    * isnull().sum()    # This is to identify null values for every column.
    * .str.replace('ERR','OK').astype(float)     # e.g. This is to replace columns 'ERR' into 'OK'
    * .fillna(0)  # This is to replace Null Columns with the 0.
    * .fillna(df.columnName.mean(),inplace = True)  # This is to replace Null Columns with the Mean of a column.
* Visualizing Data into plots
    * fig, axarr = plt.subplots(3,2, figsize = (15,13))     # e.g. Useful for creating Subplots to analyse multiple plots in one cell.


#### [Exploratory_Data_Analysis_for_Classification](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1201_Exploratory_Data_Analysis_(EDA)_for_Classification_pt2)
* Visualizing Data
    * using select_dtypes(include='object')     # This is yo show non numeric objects
    * Various types of plotting methods using (plt-matplotlib and sns-Seaborn)
* Merge, join, concatenate and compare
    * pd.merge(left_dataframe, right_dataframe, on="key")   # This is how to merge two columns indicating which is left or right and naming them using the key of the dataframe
    * result = left.join(right)     # This is an example that shows .join function which joins left to right accordingly.
    * result = pd.concat([df1, df4], axis=1)    # This is an example that shows .concat function to join columns from left to right respectively
    * df.compare(df2)   # Allow you to compare two DataFrame or Series, respectively, and summarize their differences.


#### [Data_Preparation_and_Cleaning](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1202_Data_Preparation_and_Cleaning)
* tba

<!-- Revision Section Ends -->