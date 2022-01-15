<!-- Revision Section Starts -->
## Topics Covered


<!-- Add link to the sections -->
[1. Exploratory Data Analysis pt1](#Exploratory_Data_Analysis_for_Regression) <br>
[2. Exploratory_Data_Analysis pt2](#Exploratory_Data_Analysis_for_Classification) <br>
[3. Data Preparation and Cleaning](#Data_Preparation_and_Cleaning) <br>
[4. Regression using Scikit](#Regression_using_Scikit) <br>

<!-- ABOUT Section Ends -->


#### [Exploratory_Data_Analysis_for_Regression](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1130_Exploratory_Data_Analysis_(EDA)_for_regression_1)
* Refer to Individual Assignment
* Recap on Understanding Data
    * Numeric, Discrete, Continous, Categorical, Nominal, Ranking
    * Describe() function to analyse min max count mean std etc..
* Manipulate Data inaccuracy.
    * This is to identify null values for every column.
        * isnull().sum() 
    * This is to replace columns 'ERR' into 'OK'
        * .str.replace('ERR','OK').astype(float)
    * This is to replace Null Columns with the 0.
        * .fillna(0)
        * .fillna(df.columnName.mean(),inplace = True >>> This is to replace Null Columns with the Mean of a column.
* Visualizing Data into plots
    * Useful for creating Subplots to analyse multiple plots in one cell.
        * fig, axarr = plt.subplots(3,2, figsize = (15,13))


#### [Exploratory_Data_Analysis_for_Classification](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1201_Exploratory_Data_Analysis_(EDA)_for_Classification_pt2)
* Refer to Individal Assignment
* Visualizing Data
    * Various types of plotting methods using (plt-matplotlib and sns-Seaborn)
    * This is to show non numeric objects
        * using select_dtypes(include='object')
* Merge, join, concatenate and compare
    * This is how to merge two columns indicating which is left or right and naming them using the key of the dataframe
        * pd.merge(left_dataframe, right_dataframe, on="key")
    * This is an example that shows .join function which joins left to right accordingly.
        * result = left.join(right)
    * This is an example that shows .concat function to join columns from left to right respectively
        * result = pd.concat([df1, df4], axis=1)
    * Allow you to compare two DataFrame or Series, respectively, and summarize their differences.
        * df.compare(df2) 


#### [Data_Preparation_and_Cleaning](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1202_Data_Preparation_and_Cleaning)
* Refer to Individual Assignment
    * auto_prices = pd.read_csv('Automobile_price_data__Raw_.csv')
* Recode Names
    * auto_prices.columns = [str.replace('-', '_') for str in auto_prices.columns]
* Treat Missing Values
    * (auto_prices.astype(np.object) == '?').any()
* Transform Column data type (e.g turn to numerics)
    * auto_prices[column] = pd.to_numeric(auto_prices[column])

* Feature Engineering
    * Features are transformed, or combined to form new features in forms which are more predictive. This process is known as **feature engineering**
* Some common approaches to feature engineering include:
    * **Aggregating categories** of categorical variables to reduce the number. Categorical features or labels with too many unique categories will limit the predictive power of a machine learning model. Aggregating categories can improve this situation, sometime greatly. However, one must be careful. It only makes sense to aggregate categories that are similar in the domain of the problem. Thus, domain expertise must be applied. 
    * **Transforming numeric variables** to improve their distribution properties to make them more covariate with other variables. This process can be applied not only features, but to labels for regression problems. Some common transformations include, **logarithmic** and **power** included squares and square roots. 
    * **Compute new features** from two or more existing features. These new features are often referred to as **interaction terms**. An interaction occurs when the behavior of say, the produce of the values of two features, is significantly more predictive than the two features by themselves. Consider the probability of purchase for a luxury mens' shoe. This probability depends on the interaction of the user being a man and the buyer being wealthy.
* Some feature engineering needs to be investigated to determine if any improvement in predictive power can be expected. From the previous data exploration, it is apparent that several of the numeric features had a strong left skew. A log transformation may help using **applymap and math.log**.
    * creditcardDF[['log_loan_duration_mo', 'log_loan_amount', 'log_age_yrs']] = credit[['loan_duration_mo', 'loan_amount', 'age_yrs']].applymap(math.log)

* Drop Duplicates
    * (eg) creditcardDF.drop_duplicates(subset = 'customer_id', keep = 'first', inplace = True)

#### [Regression_using_Scikit](https://github.com/mommafish/BCG_Rise/tree/main/ML_Library/Intro_to_ML/1206_Regression_using_Scikit)
* Refer to Live Class (Introduction to Linear Regression)
* Modeling
    * Start with `train_test_split` function from the `sklearn.model_selection` module
    * Scale and transform the dataset
        * sc = StandardScaler().fit_transform(x_variables)
        * x_variables = pd.DataFrame(sc, columns = x_variables.keys())
    * Steps for modeling.
        1. Prepare X & Y data for modeling
        2. Split the data
        3. Build model on training data set
        4. Fit the model
        5. Make predictions
        6. Check accuracy score 
    * Accuracy Score important data to lookat, R^square



<!-- Revision Section Ends -->
