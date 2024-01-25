# -*- coding: utf-8 -*-
"""
Created on Fri Feb 26 10:53:54 2021

@author: jaypa
"""

def non_neg_int(n):
    result = int(n)
    if result < 0:
        raise ValueError("Value error is raised")
    return result
while True:
    x = non_neg_int(input('Please enter a nonnegative integer:'))
    if x == 999: # Secret number exits loop
        break
    print('You entered', x)