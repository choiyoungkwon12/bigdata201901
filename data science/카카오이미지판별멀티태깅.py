# -*- coding: utf-8 -*-
"""
Created on Sun Mar 24 17:32:33 2019

@author: PC
"""


import sys

import argparse
import requests
from PIL import Image, ImageDraw, ImageFont
from io import BytesIO

API_URL = 'https://kapi.kakao.com/v1/vision/multitag/generate'
MYAPP_KEY = 'd6f791df86f8170b57cb81395f7a424b'

def generate_tag(image_url):
    headers = {'Authorization': 'KakaoAK {}'.format(MYAPP_KEY)}

    try:
        data = { 'image_url' : image_url}
        resp = requests.post(API_URL, headers=headers, data=data)
        resp.raise_for_status()
        result = resp.json()['result']
        if len(result['label_kr']) > 0:
            if type(result['label_kr'][0]) != str:
                result['label_kr'] = map(lambda x: str(x.encode("utf-8")), result['label_kr'])
            print("이미지를 대표하는 태그는 \"{}\"입니다.".format(','.join(result['label_kr'])))
        else:
            print("이미지로부터 태그를 생성하지 못했습니다.")

    except Exception as e:
        print(str(e))
        sys.exit(0)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Classify Tags')
    parser.add_argument('image_url', type=str, nargs='?',
        default="http://blogfiles.naver.net/data43/2009/1/23/127/%C0%CF%B0%A3%BD%BA%C6%F7%C3%F74-01_gemini761.jpg",
        help='image url to classify')

    args = parser.parse_args()

    generate_tag(args.image_url)
