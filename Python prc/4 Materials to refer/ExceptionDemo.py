# -*- coding: utf-8 -*-
"""
Created on Fri Feb 26 10:23:15 2021

@author: jaypa
"""

try:
    val = int(input("Please enter a small positive integer: "))
    print('You entered', val)
except ValueError:
    print('You have to enter only numbers')