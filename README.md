HARWIRE

The code has the purpose to analyse the .har files of users, clean up the files and either save or upload the file data to the database. The second option allows the system to give you some statistics. Lastly, in the case of admin, there are statistics about all the system.


To run the code
1) install the database (name of the db:project_web_2020)
2) use a local server (eg XAMPP)
3) Run the code 


**More about the code**

The code can be seperated in two sections, the user and the admin section. 

USER needs to be able to
1) Sign up in the system (username: admin | pwd: 12345!@#Aa)
2) Upload har files (edit file to keep only the necessary info and either save localy the result or upload to the database)
3) Edit their profile (the user can change their username/password, and show information about number of uploads and the date of the last update)
4) Visualise data from their upload (the user can see in a heatmap, where the user has sent requests)

ADMIN needs to be able to 
1) Show basic information (eg number of subscribed users, number of uploads grouped by method, number of uploads grouped by status, number of unique domains, number of unique ISP, average age of web-objects grouped by CONTENT-TYPE)
2) Analyse the timings of all uploaded data 
3) Analyse the HTTP headers of all uploaded data
4) Visualise data of entries (the admin can see in a map, where the user has sent requests and it connects them with the userlocation via a line)




