#Q3 C.
#########################################
'''from datetime import datetime,timedelta
a=input("Enter a first date: ")
#print(a)
b=datetime.strptime(a,"%d%m%Y").date()
#print(type(b))
#print(b.day)
c=input("Enter a second date: ")
#print(b)
d=datetime.strptime(c,"%d%m%Y").date()
e=b.day-d.day;
print(abs(e))
'''

#Q3 D.
##########################################
'''import time,datetime
print(datetime.datetime.now().microsecond/1000)
'''

#Q3 E.
#########################################
import time
for i in range(4):
    if  i==2:
        time.sleep(3)    
    print(i)


