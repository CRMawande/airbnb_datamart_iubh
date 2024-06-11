# airbnb_datamart_iubh

### 1. Overview
Online hotel reservation platforms have completely transformed the travel business by offering a 
quick and easy way to book lodging. Forecasts reveal a notable upward trend for the worldwide 
online hotel reservation industry, highlighting the noteworthy economic impact of these platforms. 
One of the leaders in this field, Airbnb, provides a variety of unusual lodging options, including 
houseboats, historic homes, and treehouses. Personalized interactions and recommendations are 
fostered by facilitating direct connection between hosts and visitors. Streamlining data analysis and 
reporting using a data mart will improve strategic planning and decision-making in the online hotel 
booking industry. The goal of this project is to create a data mart that draws inspiration from the 
unique features and design concepts of Airbnb.

### 2. Enhanced Entity Relationship EER Diagram
![Apdated ERM](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/0e9813a8-d6b0-44db-b6c0-27bbcf270a2d)

### 3. Data Dictionary
The following tables have been revised in the finalization phase to reflect the database current state. You can also find the Excel file in the documents folder. 
The script airbnb_data_dictionary.xlsx can be run in a query to output the table.

![image](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/27e641bb-a8bc-4d1b-a014-47741d23b943)
![image](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/8f01fe80-eed2-4e64-b4b2-b409efa93352)
![image](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/55af5732-4ed3-432a-aa5f-179f1a5a6d4f)

### 4. How to get started

A. Requirement:

This database requires MySQL Workbench to be set up. From the official page that corresponds to your operating system, download and install it: https://dev.mysql.com/downloads/workbench/

B. Getting Your Database Connected:

1. Locate the Connections area of MySQL Workbench, which is normally located on the left side of the interface.
2. Press the button with the addition sign (+) to establish a new connection.
3. Enter the hostname, username, and password for your connection.
4. Give your connection a catchy name
5. Make sure the data is correct by choosing "Test Connection." After the validation is complete, click "OK" to save the configuration.Installing and setting up the project:

c. Installing and setting up the project:

1. Go to https://github.com/CRMawande/airbnb_datamart_iubh.git to access the project's GitHub repository.
2. To obtain the project files in ZIP format, go to the "Code" section and choose "Download ZIP."
3. Extract the ZIP file after downloading, then go to the Finalization directory.
4. Look for the airbnb_schema.sql file. Run this file in your MySQL environment to create the Airbnb database schema. (Execution instructions may differ based on how your MySQL Workbench is configured.)
5. Now you can interact with the 'airbnb' and see the tables/views under airbnb > Schemas > Tables and/or Views.
6. E.g. see the View of PropertyPerformanceView under Views.sql

### 5. Example Queries

![image](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/3e4982da-d7f7-4c13-8673-128174b7ea27)

![image](https://github.com/CRMawande/airbnb_datamart_iubh/assets/163488890/81d98751-320a-4239-8c23-55325ce4c12c)


### 6. Conclusion

The SQL Datamart Airbnb project has been an invaluable learning experience. Through this project, I have gained a solid understanding of how to effectively JOIN tables using primary and foreign keys, design many-to-many tables for lookups, and utilize SELECT, GROUP BY, and other SQL statements. This hands-on experience has provided me with the skills necessary to construct a robust, real-world database using advanced database systems.




