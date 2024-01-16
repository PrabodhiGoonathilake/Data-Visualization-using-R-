Objective of the assignment 

Main objective of doing this presentation is to decide the best visualisation and summary technique with application to the data set provided “credit66” related to deciding good risk and bad risk of people obtaining loans.
In order to achieve this objective three methods of visualization and summary techniques are used as follows;
*Decision Tree
*Logistic Binary Regression
*Discriminate methods analysis


Data set- Interpretation


<img width="600" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/6b63f636-84cc-410f-85e4-7f03accd10e2">

Data Transforming

In order to see the creditability of the loans the chosen continuous variables from the data set is duration of credit months, credit amount and age in years.

Then in order to see if the variables are normal or not histograms are plotted for each. It was identified that only credit amount is not normal, and therefore it is logged, in order to create a normal distributed histogram as shown in the right side:

Other two continuous variables in which the duration of the month and age in years shows a normal distribution histogram, therefore it is not logged as shown in the right side.

<img width="236" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/88d0c859-6662-4bd8-9c74-faadcfd67b5c">


<img width="228" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/9da6888d-ff5f-49de-935e-3d2aee295e79">


<img width="241" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/b7a5dab5-300e-4146-8a47-88d0fb98e5f3">


<img width="241" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/856052d6-dad6-45fc-9305-a74f94a79e04">

1. DECISION TREE

<img width="720" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/48de5967-e581-40ba-8bd1-a334fd1c448d">

Decision Tree Interpretation


<img width="932" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/b57bf0bc-66a2-40bc-b78b-b0a5e4c03244">

2. BINARY LOGISTIC REGRESSION
Continuous and categorical variables used for dependent and independent variables under binary logistic regression;

*Dependent Variable - Creditability(Categorical)
*Independent Variable - Credit Amount(Continous) , Age in Years(Continouous) , Account Balance (Creditability)

Coefficients - Interpretation

Compared to Account Balance group 1 , people  in  Account Balance group 2,3,4 has a higher chance of identifying as a bad credit risk .
Concluding that people ranked in Account balance 4 has the highest chance of identifying as a bad credit risk.

<img width="168" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/6db51886-1274-4482-888e-9a4eb79c0750">


<img width="357" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/00bdfd48-ab59-438f-b54c-0d1560ba696c">

WALD TEST
The overall effect of the Account Balance  is statistically significant

<img width="251" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/ced28902-2cfd-4eff-b27b-cf1a56b69a99">

Wald Test (for the different levels of account Balance, e.g. rank 3 and 4)

The output P value = 0.005 which is less than 0.5 , therefore, the account balance is significant.

<img width="244" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/199dc4d6-9ef0-444b-9e75-10ed40184f12">

Interpretation 
The difference between the coefficient of account balance 3 and that of account balance 4 is statistically significant.

Odds Ratio

<img width="656" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/ddb7227d-833b-4c46-b323-5300ec64acf2">

For every one unit increase in Account Balance, the odds of creditability increases

Predicted Probabilities

<img width="280" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/047aa6f9-be8b-4e18-8314-e446326b9f00">

The average probability values of each account balance groups of 1-4 are taken here to give a more significant average value .
![image](https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/1b5c5894-6fb9-4234-9dbe-bf33597c2041)


Predicted probability Regression Diagram


<img width="485" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/8f68981f-dbc9-4570-bbd0-4c28f4967eac">


![image](https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/4f9466f1-88ea-45bf-a320-ec96dbc4512a)



3. DISCRIMINATE ANALYSIS


<img width="370" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/58dc85a4-5c64-46d2-8cdd-0a3a02b41b1b">
Out of 900 data , 645 are correctly allocated which is 71.66%)


<img width="442" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/dd6a0a19-84c4-40d8-aa3a-9cb8fcd2162d">

Using Cross Validation method , the data set is even interpreted further therefore Out of 900 data , 629 are correctly allocated which is 69.89%)


Comparison between the 3 techniques

Based on the three visualization techniques used the following comparison can be derived separately for each if the techniques used;


<img width="783" alt="image" src="https://github.com/PrabodhiGoonathilake/Data-Visualization-using-R-/assets/155852337/f9be28b0-e787-4ac6-bf7c-c278388ef8d3">

CONCLUSION

It can be concluded that based on the previously done comparison the best visualization technique that is suitable for the dataset is Decision Tree since it considered all the given variables , therefore a clear picture can be derived from it.
The response variable is not explained much in this data set as there is more categorical variables in the data set. Therefore, the response variable is less interpreted.



































































