# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 13:41:20 2019

@author: PC
"""

# -*- coding: utf-8 -*-
"""파이썬 기본 시각화.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1V2blNnISUxK3vYZQqEcPMEs2F6vuFz1E
"""

import matplotlib.pyplot as plt

# %matplotlib inline

plt.figure()
plt.plot([1,2,3,4,5,6,7,8,9,1,2,3,4,5,6])
plt.show()

import numpy as np

t = np.arange(0,12,0.01)

y = np.sin(t)
z = np.cos(t)

plt.figure(figsize =(10,6))
plt.plot(t, y, label='sin',lw=5)
plt.plot(t, z , label='cos', color='red', linestyle='dashed',marker='o') # ^ 삿갓모양형태로 바꿈 다른 형태로도 가능
plt.legend() # 오른쪽 위 선에 대한 정보를 나타냄

plt.grid() # 격자가 사라짐

plt.xlabel('time')
plt.ylabel('value')
plt.title('My Graph')








plt.show()

t2 = np.arange(0,5,0.5)

plt.figure(figsize = (10,6))
plt.plot(t2,t2,'r--')
plt.plot(t2,t2*2,'bs') # bs 는 블루스퀘어
plt.plot(t2,t2*3,'g^')
plt.plot(t2,t2*4,color='pink' , linestyle='dashed',marker='o')

plt.title('My Graph2')
plt.xlabel('t2 value')
plt.ylabel('t2 * n value')

plt.show()

s1 = np.random.normal(loc=0 , scale=1 , size=1000)
s2 = np.random.normal(loc=5 , scale=0.5 , size=1000)
s3 = np.random.normal(loc=10 , scale=2 , size=1000)

plt.figure(figsize=(10,6))
plt.plot(s1, label='s1')
plt.plot(s2, label='s2')
plt.plot(s3, label='s3')
plt.legend()
plt.show()

plt.figure(figsize=(10,6))
plt.boxplot((s1,s2,s3))

plt.show()

