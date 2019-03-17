# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 15:07:30 2019

@author: Choi young kwon
"""
# 1. 네트워크 연결
# 2. 결과 문서를 분석

import requests
from bs4 import BeautifulSoup

def crawl(url):
    print(url, ": crawl");
    result = requests.get(url);
    body_content = BeautifulSoup(result.content, "html.parser");
    return body_content;
    