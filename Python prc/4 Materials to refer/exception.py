# -*- coding: utf-8 -*-
"""
Created on Fri Jan 22 10:37:39 2021

@author: jaypa
"""

largest = -1
smallest = None
while True:
    cnum = input("Enter a number: ")
    if cnum == "done" : break
    try:
        
        num=int(cnum)
        if cnum<0:
            print("Number is negative")
        if largest<num:
        	largest=num
        if smallest is None:
            smallest=num
        elif smallest>num:
            smallest=num
    except:
        print('Invalid input')
       
print("Maximum is", largest)
print("Minimum is", smallest)
