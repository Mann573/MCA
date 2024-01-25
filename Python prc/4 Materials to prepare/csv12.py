# -*- coding: utf-8 -*-
"""
Created on Tue Dec 20 13:23:09 2022

@author: jaypa
"""

import csv 
# field names 
fields = ['Name', 'Course', 'Year', 'CGPA'] 
    
# data rows of csv file 
rows = [ ['Ashish', 'MCA', '2', '9.0'], 
         ['Deep', 'M.Sc.(AI&ML)', '2', '9.1'], 
         ['Sumit', 'M.Tech.(NT)', '2', '9.3'], 
         ['Saurabh', 'M.Tech.(WT)', '1', '9.5'], 
         ['Parth', 'PGDCSA', '3', '7.8'], 
         ['Bhavin', '5 year Integrated M.Sc.(Computer Science)', '2', '9.1']] 
    
# name of csv file
filename = "records.csv"
    
# writing to csv file 
with open(filename, 'w', newline="") as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile) 
  
    # writing the fields 
    csvwriter.writerow(fields) 

    # writing the data rows 
    csvwriter.writerows(rows)
    
# with open(filename, 'r') as csvfile:
#     # creating a csv reader object
#     csvreader = csv.reader(csvfile)
     
#     # extracting field names through first row
#     fields = next(csvreader)
 
#     # extracting each data row one by one
#     for row in csvreader:
#         rows.append(row)
 
#     # get total number of rows
#     print("Total no. of rows: %d"%(csvreader.line_num))
 
# # printing the field names
# print('Field names are:' + ', '.join(field for field in fields))
 
# # printing first 5 rows
# print('\nrows are:\n')
# for row in rows:
#     # parsing each column of a row
#     for col in row:
#         print("%s"%col,end=" "),
#     print('\n')