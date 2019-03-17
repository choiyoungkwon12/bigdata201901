# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 15:47:18 2019

@author:  Choi young kwon
"""

import requests

def get1000Result(keyword):
    list = []
    for num in range(0,10):
        list = list + call(keyword, num*100+1)['items']
    return list

def call(keyword, start): # 검색어, page 값
    url = "https://openapi.naver.com/v1/search/blog?query=" + keyword+ "&display=100" + "&start=" + str(start)
   
    result = requests.get(url = url, 
                          headers={"X-Naver-Client-Id": "Vh6xIU1QW8_Y08nLFkF7", 
                                   "X-Naver-Client-Secret": "IZ8JoCGIKE"
                          })
    print(result);
    return result.json()
    