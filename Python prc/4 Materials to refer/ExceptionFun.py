# -*- coding: utf-8 -*-
"""
Created on Mon Nov 28 15:30:27 2022

@author: jaypa
"""
def get_int_in_range(low, high):
    """ Obtains an integer value from the user. Acceptable values
    must fall within the specified range low...high passed in function"""
    need = True
    while need:
        try:
            val = int(input())
            if val < low or val > high:
                print('Value out of range, please try again:', end=' ')
            else:
                need = False 
        except ValueError:
            print('Value not a valid integer, please try again:', end=' ')
    return val

get_int_in_range(10, 20)