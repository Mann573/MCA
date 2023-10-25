#!/usr/bin/env python
# coding: utf-8

# In[ ]:


Assignment-3


# In[ ]:


Program-1


# In[ ]:


Program-2


# In[2]:


for i in range(1,31):
    print(i*i)


# In[ ]:


Program-3


# In[ ]:


1.


# In[4]:


import datetime
print(datetime.datetime.now())


# In[ ]:


2.


# In[27]:


from datetime import datetime,timedelta
a=datetime.today()
b=a-timedelta(days=5)
print(b.date())


# In[ ]:


from datetime import datetime,timedelta
a=input("Enter a date: ")
print(a)
print(datetime.strptime(a,"%d%m%Y").date())


# In[45]:


from datetime import datetime
a=input("Enter a first date: ")
print(a)
d=datetime.strptime(a,"%d%m%Y").date()
print(d.day)
b=input("Enter a second date: ")
print(b)
c=datetime.strptime(b,"%d%m%Y").date()
print(c.day)
print(abs((d.day-c.day)*(print(int(1)) if (d.month-c.month) == 0 else print(int(d.month-c.month))*(int(d.year-c.year))))


# In[ ]:





# In[ ]:





# In[ ]:




