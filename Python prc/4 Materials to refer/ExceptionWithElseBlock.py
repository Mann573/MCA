# -*- coding: utf-8 -*-
"""
Created on Fri Feb 26 10:55:43 2021

@author: jaypa
"""

def fun1():
    try:
        print('try code')
    except:
        print('exception handling code')
    else:
        print('no exception raised code')
    finally:
        print("Finally block fun1")
       
def fun2():
    try:
        print('try code')
        print('no exception raised code')
        x = int('a') # Raises an exception
    except:
        print('exception handling code')
    finally:
        print("Finally block fun2")


print('Calling fun2')
fun2()
print('-------------')
print('Calling fun1')
fun1()