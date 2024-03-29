# Crowdfunding_ETL #
### Ashley Nguyen's and Armando Cota's submission for Project #2 Crowdfunding ETL ###

Within this repository you will find a Extract, Transform, and Load mini project executed by Ashley Nguyen and Armando Cota.
Between the two of us, we were able to implement our knowledge to compose an ETL pipeline using Python, Pandas, Python dictionary methods
and Regular Expressions (REGEX) to extract and transform the data provided to us. We then created four csv files (found in the Resources folder), analyzed them, and created
an ERD.png file and a table schema (crowdfunding_db_schema.sql) executed with SQL with the CSV files uploaded into our database.

## DataFrames/Database Created ##
1. Category DataFrame

   ![image](https://github.com/tonycota/Crowdfunding_ETL/assets/150317761/a5e18ab3-64f8-4672-b06a-fc62768957ba)

3. Subcategory DataFrame
   
   ![image](https://github.com/tonycota/Crowdfunding_ETL/assets/150317761/04b6f26a-84b5-4e29-94a2-e9095e1357dc)

5. Campaign DataFrame
   
   ![image](https://github.com/tonycota/Crowdfunding_ETL/assets/150317761/ec607e9b-8525-4484-9f9c-bb0ba1078396)

7. Contacts DataFrame
   
   ![image](https://github.com/tonycota/Crowdfunding_ETL/assets/150317761/689da3a1-f847-4a17-9cdc-d8ce1caace04)

* ERD (reference used to construct Crowdfunding Database by creating table schema in pgAdmin)
  
  ![image](https://github.com/tonycota/Crowdfunding_ETL/assets/150317761/c089d5e6-1ea3-44a5-9d5c-f31a4907014e)


## Sources of Data ##
* contacts.xlsx
* crowdfunding.xlsx


## Instructions ## 
The instructions for this mini project are divided into the following subsections:
* Create the Category and Subcategory DataFrames
* Create the Campaign DataFrame
* Create the Contacts DataFrame
* Create the Crowdfunding Database
 
### Create the Category and Subcategory DataFrames ###
1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
   * A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
   * A "category" column that contains only the category titles
2. Export the category DataFrame as category.csv and save it to your GitHub repository.
3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
   * A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
   * A "subcategory" column that contains only the subcategory titles
4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

### Create the Campaign DataFrame ###
1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
   * The "cf_id" column
   * The "contact_id" column
   * The "company_name" column
   * The "blurb" column, renamed to "description"
   * The "goal" column, converted to the float data type
   * The "pledged" column, converted to the float data type
   * The "outcome" column
   * The "backers_count" column
   * The "country" column
   * The "currency" column
   * The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
   * The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
   * The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
   * The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

### Create the Contacts DataFrame ###
1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
   * Option 1: Use Python dictionary methods.
   * Option 2: Use regular expressions.
2. If you chose Option 1, complete the following steps:
   * Import the contacts.xlsx file into a DataFrame.
   * Iterate through the DataFrame, converting each row to a dictionary.
   * Iterate through each dictionary, doing the following:
     * Extract the dictionary values from the keys by using a Python list comprehension.
     * Add the values for each row to a new list.
   * Create a new DataFrame that contains the extracted data.
   * Split each "name" column value into a first and last name, and place each in a new column.
   * Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
3. If you chose Option 2, complete the following steps:
   * Import the contacts.xlsx file into a DataFrame.
   * Extract the "contact_id", "name", and "email" columns by using regular expressions.
   * Create a new DataFrame with the extracted data.
   * Convert the "contact_id" column to the integer type.
   * Split each "name" column value into a first and a last name, and place each in a new column.
   * Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

### Create the Crowdfunding Database ### 
1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
2. Use the information from the ERD to create a table schema for each CSV file.
   * Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.
