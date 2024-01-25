# -*- coding: utf-8 -*-
"""
Created on Tue Jan 25 12:03:06 2022

@author: jaypa
"""

def avg(marks):
    assert len(marks) != 0,"Error Message"
    return sum(marks)/len(marks)

mark1 = []
print("Average of mark1:",avg(mark1))