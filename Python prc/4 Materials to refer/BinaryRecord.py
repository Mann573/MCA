# -*- coding: utf-8 -*-
"""
Created on Fri Dec  2 12:32:46 2022

@author: jaypa
"""

import pickle,sys
class student:
    def __init__(self,sid,name):
        self.sid=sid
        self.name=name
            
    def displaystd(self):
        print("ID: {0} and Name :{1}".format(self.sid,self.name))


noofrec=int(input("How many number of record you want to insert:")) 
f=open("student_record.dat","ab")
pos=[]
for i in range(0,noofrec):
    s=student(0,"")
    s.sid=input("Enter Student id:")
    s.name=input("Enter Student Name:")
    pickle.dump(s,f)
    # print(sys.getsizeof(s))
      
    # print(f.tell()) 
    # pos.append(f.tell())
f.close()
f=open("student_record.dat","rb")
f.seek(0)
while True:
    try:
        obj=pickle.load(f)
        obj.displaystd()
    except Exception:
        break

