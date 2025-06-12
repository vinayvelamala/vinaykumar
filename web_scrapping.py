# import requests
# import pandas
# from bs4 import BeautifulSoup


# response=requests.get("https://www.flipkart.com/search?q=iphone+13&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off&as-pos=1&as-type=HISTORY")
# # print(response)
# soup=BeautifulSoup(response.content,'html.parser')
# # print(soup)
# names=soup.find_all('div',class_='_4rR01T')
# name=[]
# for i in names[0:20]:
#     d=i.get_text()
#     name.append(d)
#     # print(name)


# prices=soup.find_all('div',class_='_30jeq3 _1_WHN1')
# price=[]
# for i in prices[0:20]:
#     d=i.get_text()
#     price.append(d)
# # print(price)

# ratings=soup.find_all('div',class_='_3LWZlK')
# rate=[]
# for i in ratings[0:20]:
#     d=i.get_text()
#     rate.append(d)
# # print(rate)


# reviews=soup.find_all('span',class_='_2_R_DZ')
# review=[]
# for i in reviews[0:20]:
#     d=i.get_text()
#     review.append(d)
# # print(review)


# features=soup.find_all('li',class_='rgWa7D')
# feature=[]
# for i in features[0:20]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)


# links=soup.find_all('a',class_='_1fQZEK')
# link=[]
# for i in links[0:20]:
#     d="https://www.flipkart.com"+i['href']
#     link.append(d)
# # print(link)


# images=soup.find_all('img',class_='_396cs4')
# image=[]
# for i in images[0:20]:
#     d=i['src']
#     image.append(d)
# # print(image)
# df=pandas.DataFrame()
# # print(df)
# data={'names':name,
#       "prices":price,
#       "ratings":rate,
#       'reviews':review,
#       'features':feature,
#         "images":image,
#         "links":link}
# # print(data)
# df=pandas.DataFrame(data)
# # print(df)
# # df.to_csv("iphones_data.csv")


# import requests
# import pandas
# from bs4 import BeautifulSoup

# resopnse=requests.get("https://www.flipkart.com/search?q=oppo+5g+mobile&sid=tyy%2C4io&as=on&as-show=on&otracker=AS_QueryStore_OrganicAutoSuggest_1_7_na_na_ps&otracker1=AS_QueryStore_OrganicAutoSuggest_1_7_na_na_ps&as-pos=1&as-type=RECENT&suggestionId=oppo+5g+mobile%7CMobiles&requestId=e0502388-e5a2-4cf2-936e-e1cee44da86d&as-searchtext=oppo%205g")
# # print(resopnse)
# soup=BeautifulSoup(resopnse.content,'html.parser')
# # print(soup)
# names=soup.find_all('div',class_='_4rR01T')
# name=[]
# for i in names[0:20]:
#     d=i.get_text()
#     name.append(d)
# # print(name)

# prices=soup.find_all('div',class_='_30jeq3 _1_WHN1')
# price=[]
# for i in prices[0:20]:
#     d=i.get_text()
#     price.append(d)
# # print(price)

# ratings=soup.find_all('div',class_="_3LWZlK")
# rate=[]
# for i in ratings[0:20]:
#     d=i.get_text()
#     rate.append(d)
# # print(rate)

# reviews=soup.find_all('span',class_='_2_R_DZ')
# review=[]
# for i in reviews[0:20]:
#     d=i.get_text()
#     review.append(d)
# # print(review)

# features=soup.find_all('li',class_='rgWa7D')
# feature=[]
# for i in features[0:20]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)

# images=soup.find_all('img',class_='_396cs4')
# image=[]
# for i in images[0:20]:
#     d=i['src']
#     image.append(d)
# # print(image)

# links=soup.find_all('a',class_='_1fQZEK')
# link=[]
# for i in links[0:20]:
#     d="https://www.flipkart.com"+i['href']
#     link.append(d)
# # print(link)

# df=pandas.DataFrame()
# # print(df)
# data={"names":name,
#       "prices":price,
#       'ratings':rate,
#       'reviews':review,
#       "features":feature,
#       "images":image,
#       "links":link}
# # print(data)
# df=pandas.DataFrame(data)
# # print(df)
# df.to_csv("oppophones_data.csv")



import requests
import pandas
from bs4 import BeautifulSoup
# response=requests.get("https://www.bikewale.com/royalenfield-bikes/")
# # print(response)
# soup=BeautifulSoup(response.content,'html.parser')
# # print(soup)
# names=soup.find_all('h3',class_='o-jjpuv o-cVMLxW o-mHabQ o-fzpibK')
# name=[]
# for i in names[0:10]:
#     d=i.get_text()
#     name.append(d)
# # print(name)

# prices=soup.find_all('span',class_='o-eZTujG o-byFsZJ o-bkmzIL o-bVSleT')
# price=[]
# for i in prices[0:10]:
#     d=i.get_text()
#     price.append(d)
# # print(price)

# features=soup.find_all('span',class_='o-cNwRuH o-cQa-DfF')
# feature=[]
# for i in features[0:10]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)


# images=soup.find_all('img',class_='o-bXKmQE o-cgkaRG o-cQfblS o-bNxxEB o-pGqQl o-wBtSi o-bwUciP o-btTZkL o-bfyaNx o-eAZqQI')
# image=[]
# for i in images[0:10]:
#     d=i['src']
#     image.append(d)
# #print(image)

# ratings=soup.find_all('a',class_='o-bkmzIL o-eqqVmt o-elzeOy o-fzoTov o-fzptYr')
# rate=[]
# for i in ratings[0:10]:
#     d=i.get_text()
#     rate.append(d)
# # print(rate)

# df=pandas.DataFrame()
# # print(df)
# data={"names":pandas.Series(names),
#       "prices":price,
#       "features":feature,
#       'ratings':rate,
#       "images":image}
# print(data)
# df=pandas.DataFrame(data)
# print(df)


# response=requests.get("https://www.flipkart.com/laptops-store?fm=neo%2Fmerchandising&iid=M_499a4597-81b0-4bbf-8c8d-5f89c8f8b94f_1_372UD5BXDFYS_MC.WB1CFS0X26D1&otracker=hp_rich_navigation_2_1.navigationCard.RICH_NAVIGATION_Electronics~Laptop%2Band%2BDesktop~Laptops_WB1CFS0X26D1&otracker1=hp_rich_navigation_PINNED_neo%2Fmerchandising_NA_NAV_EXPANDABLE_navigationCard_cc_2_L2_view-all&cid=WB1CFS0X26D1")
# # print(response)
# soup=BeautifulSoup(response.content,'html.parser')
# # print(soup)
# names=soup.find_all('a',class_='s1Q9rs')
# name=[]
# for i in names[0:20]:
#     d=i.get_text()
#     name.append(d)
# print(name)

# prices=soup.find_all('div',class_='_30jeq3')
# price=[]
# for i in prices[0:20]:
#     d=i.get_text()
#     price.append(d)
# # print(price)


# ratings=soup.find_all('div',class_='_3LWZlK')
# rate=[]
# for i in ratings[0:20]:
#     d=i.get_text()
#     rate.append(d)
# # print(rate)


# reviews=soup.find_all('span',class_='_2_R_DZ')
# review=[]
# for i in reviews[0:20]:
#     d=i.get_text()
#     review.append(d)
# # print(review)

# features=soup.find_all('div',class_='_3YgSsQ')
# feature=[]
# for i in features[0:20]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)

# links=soup.find_all('a',class_='_2rpwqI')
# link=[]
# for i in links[0:20]:
#     d="https://www.flipkart.com"+i['href']
#     link.append(d)
# # print(link)

# images=soup.find_all('img',class_='_396cs4')
# image=[]
# for i in images[0:20]:
#     d=i['src']
#     image.append(d)
# # print(image)

# df = pandas.DataFrame()
# # print(df)

# data={"names":names,
#       "prices":price,
#       "ratings":rate,
#       'features':feature,
#       "reviews":review,
#       "images":image,
#       "links":link}
# # print(data)
# df = pandas.DataFrame(data)
# print(df)



# url = "https://quotes.toscrape.com/"
# responce=requests.get(url)
# # print(responce)
# soup = BeautifulSoup(responce.content,'html.parser')
# quote=soup.find_all('span',class_="text")
# # print(quote)
# quote = [quote.text[1:-1] for quote in quote]
# # print(quote)
# authors = soup.find_all('small',class_="author")
# authors = [author.text[1:-1] for author in authors]
# # print(authors)
# tags = soup.find_all('div',class_="tags")
# # print(tags)
# total_tags = []
# for i in range(len(tags)):
#     k = []
#     for j in tags[i].find_all('a',class_="tag"):
#         k.append(j.text)
#     total_tags.append(','.join(k))
# # print(total_tags)

# df = pandas.DataFrame()
# data = {"quote":quote,
#         "author":authors,
#         "tags":total_tags}
# # print(data)
# df = pandas.DataFrame(data)
# # print(df)
# df.to_csv("quots_data.csv")


import requests
import pandas
from bs4 import BeautifulSoup
import csv

# responce = requests.get("https://www.flipkart.com/search?q=vivo%205g%20phons&otracker=search&otracker1=search&marketplace=FLIPKART&as-show=on&as=off")
# # print(responce)
# soup = BeautifulSoup(responce.content,'html.parser')
# print(soup)
# names = soup.find_all('div',class_="_4rR01T")
# name=[]
# for i in names[0:20]:
#     d=i.get_text()
#     name.append(d)
# # print(name)
# prices = soup.find_all('div',class_="_30jeq3 _1_WHN1")
# price=[]
# for i in prices[0:20]:
#     d=i.get_text()
#     price.append(d)
# # print(price)
# ratings = soup.find_all('div',class_="_3LWZlK")
# rate=[]
# for i in ratings[0:20]:
#     d=i.get_text()
#     rate.append(d)
# # print(rate)

# reviews = soup.find_all('span',class_="_2_R_DZ")
# review=[]
# for i in ratings[0:20]:
#     d=i.get_text()
#     review.append(d)
# # print(review)

# features = soup.find_all('ul',class_="_1xgFaf")
# feature=[]
# for i in features[0:20]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)


# images = soup.find_all('img',class_="_396cs4")
# image=[]
# for i in images[0:20]:
#     d=i['src']
#     image.append(d)
# # print(images)

# links = soup.find_all('a',class_="_1fQZEK")
# link=[]
# for i in links[0:20]:
#     d="https://www.flipkart.com/"+i['href']
#     link.append(d)
# # print(link)
# df = pandas.DataFrame()
# data = {"names":name,
#         "prices":price,
#         "ratings":rate,
#         "reviews":review,
#         "features":feature,
#         "images":image,
#         "links":link}
# # print(data)
# df = pandas.DataFrame(data)
# # print(df)
# df.to_csv("vivophones_data.csv")


responcs = requests.get("https://www.tvsmotor.com/our-products/vehicles")
# print(responcs)
soup = BeautifulSoup(responcs.content,'html.parser')
# print(soup)
names = soup.find_all('p',class_="name")
name = []
for i in names[0:10]:
    d=i.get_text()
    name.append(d)
# print(name)
# prices = soup.find_all('span',class_="productAmount")
# price = []
# for i in prices[0:10]:
#     d=i.get_text()
#     price.append(d)
# # print(price)
# features = soup.find_all('div',class_="visible-xs")
# feature = []
# for i in features[0:10]:
#     d=i.get_text()
#     feature.append(d)
# # print(feature)
# images = soup.find_all('img',class_="visible-xs")
# image = []
# for i in images[0:10]:
#     d=i['href']['src']
#     image.append(d)
# 

import csv
import pandas as p
import json

# url = "https://www.imdb.com/chart/top/?ref_=nv_mv_250"
# resp=requests.get(url).content
# soup=BeautifulSoup(resp,'html.parser')
# titles=soup.find_all('td',class_="titleColumn")
# print(titles)

# url = "https://www.flipkart.com/search?q=mobiles"
# r=requests.get(url)
# soup=BeautifulSoup(r.content,'html.parser')
# titles=soup.find_all('div',class_="_4rR01T")
# # print(titles)
# ratings=soup.find_all('div',class_="_3LWZlK")
# # print(ratings)
# reviews=soup.find_all('span',class_="_13vcmD")
# features=soup.find_all('li',class_="rgWa7D")
# prices=soup.find_all('div',class_="_25b18c")
# # print(prices)

# mt=[]
# mr=[]
# mre=[]
# mf=[]
# mp=[]

# for title,rating,rev,fe,pri in zip(titles,ratings,reviews,features,prices):
#     mt.append(title.text)
#     mr.append(rating.text)
#     mre.append(rev.text)
#     mf.append(fe.text)
#     mp.append(pri.text)

# # print(mt)
# data={"mt":mt,"mr":mr,"mre":mre,"mf":mf,"mp":mp}
# # print(data)
# model=p.DataFrame(data=d)

# model.to_csv("mobilesdata.csv")



from datetime import date
# print(date.today())


# print(date.today())

# def myfunction(n):
#     return lambda a : a*n
# n = int(input("Which table you want : "))
# tables = myfunction(n)
# for i in range(1,11):
#     print(n,'X',i,'=',tables(i))




from datetime import datetime

# '''name=input("Enter Your Name:")

# lists='''
# Rice    Rs 20/kg
# Sugar   Rs 30/kg
# salt    Rs 20/kg
# Oil     Rs 80/lit
# Panner  Rs 110/kg
# Maggi   Rs 50/kg
# Boost   Rs 90/each
# colgate Rs 85/each
# '''
# # print(lists)
# price=0
# pricelist=[]
# totalprice=0
# finalprice=0
# ilist=[]
# qlist=[]
# plist=[]
# # rates of items
# items={'rice':20,
#        'sugar':30,
#        'salt':20,
#        'oil':80,'panner':110,'maggi':50,'boost':90,'colgate':85}
# option=int(input("for list of items press 1"))
# if option==1:
#     print(lists)
# for i in range(len(items)):
#     inp1=int(input("if you want you buy prees 1 or 2 for exit:"))
#     if inp1==2:
#         break
#     if inp1==1:
#         item=input("Enter your items:")
#         quantity=int(input("Enter your quentity:"))
#         if item in items.keys():
#             price=quantity*(items[item])
# # print(price)'''
#   '''          pricelist.append((item,quantity,items,price))
#             totalprice+=price
#             ilist.append(item)
#             qlist.append(quantity)
#             plist.append(price)
#             gst=(totalprice*5)/100
#             finalamount=gst+totalprice
#         else:
#             print("sorry your enter item is not avilable")
#     else:
#         print("your entered worng number")
#     inp=input("can i bill the items yes or no:")
#     if inp=='yes':
# #         pass
#         if finalamount!=0:
#             print(25*"=","Dmart",25*"=")
#             print(28*" ","Medchal")
#             print("name:",name,30*" ","Date:",datetime.now())
#             print(75*"-")
#             print("sno",8*" ",'items',5*" ",'quantity',3*" ",'price')
#             for i in range(len(pricelist)):
#                 print(i,8*' ',5*' ',ilist[i],3*' ',qlist[i],8*" ",plist[i])
#             print(75*"-")
#             print(50*" ",'TotalAmount:','Rs',totalprice)
#             print("gst amount",50*" ",'Rs',gst)
#             print(75*"-")
#             print(50*" ",'finalAmount:','Rs',finalamount)
#             print(75*"-")
#             print(50*" ","Thanks for visiting")
#             print(75*"-")'''



import tkinter
from tkinter import *

# root=tkinter.Tk()
# root.title("demo")
# root.geometry("600x600")
# # label
# # label=tkinter.label(root,text="hii").pack()
# # button
# b=Button(root,text="like",bg="orange",fg="black")
# b.grid(column=1,row=0)
# #radio
# r=Radiobutton(root,text="python",value=1)
# r.grid(column=2,row=1)
# r1=Radiobutton(root,text="c",value=2)
# r1.grid(column=2,row=2)
# r2=Radiobutton(root,text="c++",value=3)
# r2.grid(column=2,row=3)
# t=Entry(root,width=10)
# t.grid(column=3,row=0)


# import tkinter
# from tkinter import *
# from tkinter import messagebox

# def ok():
#     uname = e1.get()
#     password = e2.get()
    
#     if(uname == "" and password == ""):
#         messagebox.showinfo("", "Blank Not allowed")

#     elif(uname == "Admin"  and password == "123"):
#         messagebox.showinfo("","Login Sucess")
#         root.destroy()



from tkinter import *
import tkinter as tk
from tkinter.scrolledtext import ScrolledText
import requests
from tkinter import messagebox
import random
from datetime import datetime
from tkinter import filedialog

# # ============================ Total Button code ================================
# def total_bill():

#     # ================== Drinks Items Price =====================================
#     lassi_price = 50
#     coffee_price = 30
#     tea_price = 10
#     juice_price = 30
#     milk_price = 20
#     redbull_price = 150
#     # =================== Food Items Prices ======================================
#     roti_price = 5
#     dal_price = 120
#     panner_price = 150
#     mixveg_price = 70
#     parota_price = 40
#     veg_biriyani_price = 150
#     chiken_biriyani_price = 180
#     matton_boriyani_price = 300
#     # ======================= Drinks Item quantity =================================
#     lassi_q = lassi_qty.get()
    

# OOPs Concepts
# class viny:
#     print("this is class")
#     def display(self):
#         a=10
#         b=12
#         print(a,b)
# obj=viny()
# obj.display()


# class Mobile:
#     def __init__(self,Brand,battery,ram,camera,price):
#         self.Brand=Brand
#         self.battery=battery
#         self.ram=ram
#         self.camera=camera
#         self.price=price
#     def display(self):
#         print("Brand:",self.Brand)
#         print("Battery:",self.battery)
#         print("Ram:",self.ram)
#         print("Camera:",self.camera)
#         print("price:",self.price)
#         print("-----------------------")
# for i in range(5):
#     obj=Mobile("apple","5000mah","8gb","50mp","98000")
#     obj.display()
#     obj=Mobile("oppo","5000mah","18gb","40mp","40000")
#     obj.display()

# class Mobile:
#     def __init__(self):
#         print("this is vinay")
#     def display(self):
#         print("this is method")
# obj=Mobile()
# obj.display()

# # single inh
# class parent:
#     def fun1(self):
#         print("this is parent class")
# class Child(parent):
#     def fun2(self):
#         print("this is child class")

# obj=Child()
# obj.fun2()
# obj.fun1()    

## multilevel inh
# class parent:
#     def fun1(self):
#         print("this is parent class")
# class Child(parent):
#     def fun2(self):
#         print("this is child class")
# class GrandChild(Child):
#     def fun3(self):
#         print("this is Grandchild class")
# obj=GrandChild()
# obj.fun2()
# obj.fun1()    
# obj.fun3()

# # herical inh
# class parent:
#     def fun1(self):
#         print("this is parent class")
# class Child1(parent):
#     def fun2(self):
#         print("this is child class")
# class Child2(parent):
#     def fun3(self):
#         print("this is child2 class")
# obj=Child2()
# # obj.fun2()
# obj.fun1()    
# obj.fun3()

# # mulitiple inh
class Father:
    def fun1(self):
        print("this is father class")
class Mother:
    def fun2(self):
        print("this is mother class")
class Child(Father,Mother):
    def fun3(self):
        print("this is child2 class")
obj=Child()
obj.fun2()
obj.fun1()    
obj.fun3()
print("vinay")