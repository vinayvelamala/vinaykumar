#           PROJECT -  FILPKART, Extract product data, prices, and reviews.

# IN ONLINE RAW DATA TRANSFROM INTO TABLER EXCEL FORM.
'''pip install BeautifulSoup
import requests
import pandas as pd
from bs4 import BeautifulSoup'''

response=requests.get("https://www.flipkart.com/mobiles/pr?sid=tyy%2C4io&p%5B%5D=facets.brand%255B%255D%3DAPPLE&param=167811&ctx=eyJjYXJkQ29udGV4dCI6eyJhdHRyaWJ1dGVzIjp7InRpdGxlIjp7Im11bHRpVmFsdWVkQXR0cmlidXRlIjp7ImtleSI6InRpdGxlIiwiaW5mZXJlbmNlVHlwZSI6IlRJVExFIiwidmFsdWVzIjpbIkFwcGxlIFNtYXJ0cGhvbmVzIl0sInZhbHVlVHlwZSI6Ik1VTFRJX1ZBTFVFRCJ9fX19fQ%3D%3D&wid=66.productCard.PMU_V2_27")
#print(response)

soup=BeautifulSoup(response.content,'html.parser')
# print(soup)
names=soup.find_all('div',class_='KzDlHZ')
# print(names)
name=[]
for i in names[0:10]:
    d=i.get_text()
    name.append(d)
# print(name)

prices=soup.find_all('div',class_='Nx9bqj _4b5DiR')
price=[]
for i in prices[0:10]:
    d=i.get_text()
    price.append(d)
# print(price)

ratings=soup.find_all('div',class_='XQDdHH')
rate=[]
for i in ratings[0:10]:
    d=i.get_text(float(d))
    rate.append(d)
# print(rate)

reviews=soup.find_all('span',class_='hG7V+4')
review=[]
for i in review[0:10]:
    d=i.get_text()
    review.append(d)

features=soup.find_all('li',class_='J+igdf')
feature=[]
for i in features[0:10]:
    d=i.get_text()
    feature.append(d)

links=soup.find_all('a',class_='CGtC98')
link=[]
for i in links[0:10]:
    d="https://www.flipkart.com/"+i['herf']
    link.append(d)

images=soup.find_all('img',class_="DByuf4")
image=[]
for i in images[0:10]:
    d=i['src']
    #d=i.div.img['src]   # secound method
    image.append(d)
# print(image)

df=pandas.DataFrame()
#print(df)
data={'names':name, # any error use another method {"names":name.pandas.series(),}
      "prices":price, #use another method  {"names":pandas.series(names),}
      "ratings":rate,
      "features":feature,
      "reviews":review,
      "images":image,
      "links":link
      }
# print(data)

df=pandas.DataFrame(data)
# print(df)
df.to_csv("mobiles_data.csv")

#                    project -  2

response=requests.get("https://www.amazon.in/b/ref=AF_WIN_bub_w_cml_t_1?pf_rd_r=BWEBAHSM7BRSCHEC6VC8&pf_rd_p=00a5772d-8015-4572-b199-5dada5deb2d5&pf_rd_m=A1VBAL9TL5WCBF&pf_rd_s=merchandised-search-13&pf_rd_t=&pf_rd_i=1389401031&node=65988630031&ref_=CLP_MH1_Halo2_LatestLaunch")
# print(response)
soup=BeautifulSoup(response.content,'html.parser')
# print(soup)
names=soup.find_all('span',class_="a-size-base-plus a-color-base a-text-normal")
name=[]
for i in names[0:15]:
    d=i.get_text()
    name.append(d)
# print(name)

#                 ATM  project 

# print("========= SBI ATM =========")
# Pin = input("Enter Your Pin :")
# cash = int(input("ENTER YOUR AMOUNT : "))
# remainingAmount = 40000-cash
# print('Take Your Cash :',cash,'\n','Remaining Amount:',remainingAmount)
# print('Thank You For Using ATM')
