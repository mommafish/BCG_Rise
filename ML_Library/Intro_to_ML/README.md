<!-- Revision Section Starts -->
## Topics Covered


<!-- Add link to the sections -->
[1. Exploratory Data Analysis pt1](#Exploratory_Data_Analysis_01) <br>
[2. Exploratory_Data_Analysis pt2](#Exploratory_Data_Analysis_02) <br>

<!-- ABOUT Section Ends -->


#### [Exploratory_Data_Analysis_01](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1130_Exploratory_Data_Analysis_(EDA)_for_regression_1)
* Recap on Understanding Data
    * Numeric, Discrete, Continous, Categorical, Nominal, Ranking
    * Describe() function to analyse min max count mean std etc..
* Manipulate Data inaccuracy.
    * isnull().sum()    # This is to identify null values for every column.
    * .str.replace('ERR','OK').astype(float)     # e.g. This is to replace columns 'ERR' into 'OK'
    * .fillna(0)  # This is to replace Null Columns with the 0.
    * .fillna(df.columnName.mean(),inplace = True)  # This is to replace Null Columns with the Mean of a column.
* Visualizaing Data into plots
    * fig, axarr = plt.subplots(3,2, figsize = (15,13))     # e.g. Useful for creating Subplots to analyse multiple plots in one cell.


#### [Exploratory_Data_Analysis_02](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1201_Exploratory_Data_Analysis_(EDA)_for_Classification_pt2)
* tba

<!-- Revision Section Ends -->