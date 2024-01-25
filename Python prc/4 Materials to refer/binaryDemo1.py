# -*- coding: utf-8 -*-
"""
Created on Fri Mar 26 10:54:46 2021

@author: jaypa
"""

f=open("img2.png","wb")
str="MCA2021 Semester1"
# str1="\nPGDCSA2021 SEM1"
txt = bytes(str, 'utf-8')
f.write(txt)
# f.write(str1.encode())
f.close()

f=open("mca1.txt","rb")
print(f.read().decode())
print("======================")
# print(f.tell())
f.seek(0)
print(f.read(3).decode())
# print(str1)
# print(str1[0:3])
# print(f.read().decode())
f.seek(-3,2)
print(f.read().decode())







