# What Every Developer Should Know About SQL Server Performance

This github repository is a complement to my Pluralsight course [http://bit.ly/SqlPerformanceCourse] ("What Every Developer Should Know Aboust SQL Server Performance").  In addition to my Pluralsight course, I also do a conference talk by the same name that shares much of the same content, so this repository supports both the course and the talk  

## Requirements
You need to have a SQL Server version of 2008R@ or later available.  SQL Express on your local workstation will work fine.  If you don't have SQL Server express, you can download SQL Server Express 2016 from the site [downloadsqlserverexpress.com](http://www.hanselman.com/blog/DownloadSqlServerExpress.aspx).  This is a blog post from Scott Hanselman, but contains links directly to the correct download pages which is much easier than searching around Microsoft's web site.


## Sample Database
The sample database used throughout the course and talk is based on a fictional university to track what students have applied, enrolled and their progress in their courses.  The database has enough data so you will get some "real" execution plans and can try out troubleshooting some real performance problems for yourself.

The sample database is provided in two ways: 
1) As MS SQL backup files
2) as bcp raw data that you can import using the bcp utility.  

Using a backup file is probably the easiest, but bcp data is a surefire way to get the data if for some reason you run into trouble restoring backups

### Restoring a backup file to create the sample database
There are separate backup files for SQL Server 2008R2, SQL Server 2012 and SQL Server 2014.  If you are on SQL Server 2016, you should be able to use the SQL 2014 file.  

Once you have the appropriate file downloaded, unzip the file.  Then, in SQL Server Management Studio, right click on the databases folder and select "Restore Database".  In the dialog box, choose "Device" and locate the file ("Students.bak") file you just unzipped.  Follow the prompts and the database will be restored to your system.

### Using the bcp data to create the sample database

If you have trouble with the backup file, or just prefer to import your data directly, I've put together a zip file of the raw data exported out using the SQL Server bcp utility.  In this file, I have a readme.txt file that tells the exact steps to bring the data in, but basically, you will do the following:

1) Go into Management Studio and create a new database called Students.
2) R un the included Students-Schema.sql file in Management Studio to create all of the schema objects (tables)
3) At a command prompt, run a series of bcp commands to bring the data into SQL Server.  In the file, there is a list of all the commands you need to run in the correct order.  



## Dynamic Management View Queries
The Dynamic Management Views contain a wealth of useful information for performance troubleshooting.  While many DMV's are targetted at DBA's, they can also be very useful for developers to look at, so I have included some of the most useful queries here.  These are all in the folder labeled DMV queries.

Note: You must have VIEW SERVER STATE permission to access these views.  This is something you may need to get your DBA to grant to you.  If they are unwilling to do this in a production environment, you can always as them to run one of these queries for you and send you the results.  What is important is you know such information exists so you can ask for it when needed.

If you are looking for some description of these queries, I have a number of blog posts on these which you can access at [http://buildingbettersoftware.blogspot.com/2016/04/dmv-queries-from-my-pluralsight-course.html] (http://buildingbettersoftware.blogspot.com/2016/04/dmv-queries-from-my-pluralsight-course.html) 






