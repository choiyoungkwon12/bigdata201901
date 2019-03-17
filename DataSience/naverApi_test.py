# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 15:57:05 2019

@author: Choiyoungkwon
"""

import mymodule.naverApi as naver
import pandas as pd

#result = naver.call("휴대폰",1);
#print(result)
result2 = naver.get1000Result("휴대폰");
print(result2)