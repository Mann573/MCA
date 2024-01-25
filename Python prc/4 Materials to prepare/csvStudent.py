# -*- coding: utf-8 -*-
"""
Created on Tue Dec 20 13:26:06 2022

@author: jaypa
"""

# -*- coding: utf-8 -*-
"""
Created on Tue Dec 20 13:23:09 2022

@author: jaypa
"""

import csv 
# rows=list()
# class student:
#     def __init__(self,sid,name):
#         self.sid=sid
#         self.name=name
#         rows.append([sid,name])
                
#     def displaystd(self):
#             print("ID: {0} and Name :{1}".format(self.sid,self.name))

# # field names 
# fields = ['ID', 'Name'] 

# # Row data 
# s1=student(1,"Jay")
# s2=student(2,"Vijay")
# s1.displaystd()
# s2.displaystd()

# # name of csv file 
# filename = "student.csv"
    
# # writing to csv file 
# with open(filename, 'w') as csvfile:
#     csvwriter = csv.writer(csvfile)    
#     csvwriter.writerow(fields)   
#     csvwriter.writerows(rows)
    
# Reading CSV
filename = "student.csv"
fields = []
rows = []
with open(filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    fields = next(csvreader)
    for row in csvreader:
        rows.append(row)
    print("Total no. of rows: %d"%(csvreader.line_num))
 
print('Field names are:' + ', '.join(field for field in fields))
print('\nrows are:\n')
for row in rows:
    for col in row:
        print("%10s"%col,end=" "),
    print('\n')
    
    
    
    
    
    