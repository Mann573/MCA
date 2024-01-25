# -*- coding: utf-8 -*-
"""
Created on Mon Mar  8 13:42:54 2021

@author: jaypa
"""

# import os

# for reading
# f = open("j1.txt","r")
# f.write("ABC")
# print(f.read())
# print(f.read(10))

# print(f.readline())
# print(f.readline())
# print(f.readline())

# for fileline in f:
#     print(fileline)

# f.close()
# print(f.read())
# for reading Done


# Append data to file
# f = open("j1.txt", "a")
# f.write("\nData is appended to the file!")
# f.close()

# f = open("pytextfile.txt", "a")
# f.write("\nThis is MCA1 Class")
# f.close()

# #open and read the file after the appending:
# f = open("pytextfile.txt", "r")
# print(f.read())

#Append data to file Done

#write using w mode
# f = open("pytextfile.txt", "w")
# f.write("I have overwrite the content…")
# f.close()

#open and read the file after the appending:

# f = open("pytextfile.txt", "r")
# print(f.read())
#write using w mode Done


# Create a New File

# f = open("file21.txt", "x") 
# f = open("file21.txt", "a") 
# f.write("This is new file")
# f.close()

# f = open("file2.txt ", "r") 
# print(f.read())

# Create a New File Done

# open file with with 

# with open("file2.txt","r") as f:
#     print(f.read())
    

#open file with withDone
 
# Remove file

# if os.path.exists("file21.txt"):
#     os.remove("file21.txt")
#     print("The file Removed")
# else:
#     print("The file does not exist")

# Remove file Done


# Count line word and characters from file

# f1=open("MCA1Demo.txt","r")  
# f1.close()
f1=open("MCA1Demo.txt","r") 
no_of_line=0
space=0
char=0
no_of_a=0

# for file1 in f1:
#     # print(f1.readline())
#     # print("======")
    
#     no_of_line+=1
#     for c in file1:
#         char+=1
#         if c==" " or c=="\n" :
#             space+=1
#         if c=="a" :
#             no_of_a+=1

# print(f1.tell())    
# print("Total No of Lines:"+str(no_of_line))
# print("No of word",space+1)
# print("No of characters:",char)
# print("Total No of a is:",no_of_a)



# Count line word and characters from file Done


f=open("pytextfile.txt","r")  
word=input("Enter the word to match:")
count=0
for file1 in f:
    w1=file1.split(" ")
    print(w1)
    for w in w1:
        if(w.rstrip("\n")==word):
            count+=1    
print("Total No of time a word is repeated:"+str(count))

