#!/usr/bin/env python
# coding: utf-8

# In[1]:


## store useful functions 


# In[2]:

def HelloWorld():
    print("TEST ")

def CountUniqueAttributesDF(df,attName):
    nAtts = df[attName].nunique()
    print("Number of "+attName+" = "+str(nAtts))

# In[ ]:




