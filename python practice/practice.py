# print ("this is vinaykumar")

#                                          classs ----2
# comments
'''
single line comments (#)
multiline comments (''' ''')
'''

#                                           class -- 3
#variables
'''a=10
print(a)
abc= "vinaykumar"
print (abc)

a,b,c = 1,2,5
print(a,b,c)'''

'''a=b=c = 1
print(id(c))'''

# lover case 
# upper case
'''vinay=98
VINAY=99
print(vinay)
print(VINAY)'''

#                                       CLASS --- 4
from pickle import TRUE
from xmlrpc.client import boolean


'''int
float
boolean
list
tuple
set
complex
dictonary # type: ignore'''

'''a = 1
b= -5
print(type(a))
print(type(b))

a= True
b= False
print(type(a),type(b))

print (True==1)
print (False==0)

c=2.22
print(type(c))

v=6+3j
print(type(v))'''

#                                 CLASS ----- 5
# CONTROL STATEMENTS

'''age = 25
if age>=18:
    print("you can vote")
else:
    print("wait")'''


'''for i in range(1,11):
    print(i)

for i in range (1,20,2):
    print(i)

a = ["vinaykumar"]
for i in a:
    print(i)

a = 'vinaykumar'
for i in a:
    print(i)'''

# while
'''while True:
    print('hi')'''

'''vinay = 5
while vinay<20:
    print("hi",vinay)
    vinay+=3

for i in range (1,50):
    for j in range(0,100):
        print(i+j)'''


'''
for i in "vinaykumar":
    if i =='k':
        break
    print(i)

for i in "vinaykumar":
    if i =='k':
        continue
    print(i)   

for i in "vinaykumar":
    if i =='k':
        pass
    print(i)'''

                                 # CLASSS ---- 6
# STRING

# a = 'vinay'
# b = "vinay"
# c = '''vinay'''
# print(a,b,c)

# a = 'vinaykumar'
# print(a.upper())
# b = 'VINAYKUMAR'
# print(a.lower())

# v = "kumar vinay"
# print(v.endswith("vinay"))

# v = "kumar vinay"
# print(v.endswith("k"))

# k = "vinay"
# print(k.startswith("v"))

# k = "vinay"
# print(k.startswith("k"))

# c = "vinay kuya"
# print(c.replace("kuya","kumar"))

# x = "vimal vinay varama"
# print(x.count('v'))
# print(x.removeprefix("vimal"))

'''d = "      vinay kumar    "
print(d)
print(len(d))
print(d.strip())'''

#                       CLASS -----7
# list

'''v = [1,2,3,4,5,6,55,4,8,8,6,6,'vinay''ram']
print(v)
print(v[0:10:2])

x = [1,2,3,4,5,'vinay']
x.append("kumar")
x.extend([526,52,63,85])
print(x.count(5))
x.remove(52)
print(x)'''


#                         CLASS -----8
# TUPLE

'''z = (1,2,3,4,5,6,7,'vinay')
print(z[-1])

v = (1,2,3,4,5,6,7)
print(min(v))
print(max(v))
print(sum(v))
print(len(v))

t1 = (1,2,3,4)
t2 = (5,6,7)
print(t1+t2)
print(sum(t1+t2))'''

#                     CLASS ====== 9
# DICTONARY

'''d={1:'abc',2:'vinay',3:'kumar'}
print(d[2])
print(d.get(3))
print(d.keys())
print(d.values())
print(d.items())
d.update({11111:22222})
print(d)
for i in d:
    print(i)'''

#                         CLASS =========10
# SET {}

'''s = {2,25,5,6,85,96,96,85,4,}
print(s)
s.add(55)
s.update({22,11,44,33,44})
s.pop()
s.remove(11)
print(s)'''

'''f = {1,2,3}
g = {3,4,5}
print(f.union(g))
print(f.intersection(g))
print(f.difference(g))
print(f.issubset(g))
print(f.issuperset(g))'''

#                         CLASS ====== 11
# FUNCTIONS

'''def add(a,b):
    print(a+b)
def sub(a,b):
    print(a-b)
add(3,3)
sub(3,3)'''

#                           class ==== 12
# FILE HANDLING

'''s=open('demo.txt',mode='r')
print(s.read())
s.close()


s=open('demo.txt',mode='w')
s.write("bye bye")
s.close()'''


#                              class===== 13
# error handling

'''try:
    print('a'+33)
except TypeError:
    print("type error")
except ValueError:
    print("value error")'''

#                          CLASS ======= 14
# POP
# OOPS
# CLASS

# class Pythonlife():
#     a=3
#     print(a)

'''class Pythonlife():
    a=2
    def output(self):
        print(self.a)
    output()
b=Pythonlife()
v=Pythonlife()
print(b.a)
b.output()
v.output()'''


#                          CLASS ========== 15
# INHERITANCE

'''class parent():
    def output(self):
        print("im the parent")
class child(parent):
    def outputc(self):
        print("im child")
c=child()
c.output()
c.outputc()'''

'''class Grandfather():
    def outputgf(self):
        print("im grandfather")
class parent(Grandfather):
    def outputc(self):
        print("im parent")
class child(parent):
    def output(self):
        print("im child")
c=child()
c.outputc()
c.output()
c.outputgf()'''


#                              CLASS ------- 16

'''def add(a,b):
    print(a+b)
add(1,2)
add('a','b')
add([34,4],[3,4])
add((3,4),(4,6))'''


#                                CLASS ----- 17
# HTML
#                                WEB SCRAPPING

#                         class ----- 18
# machine learing

#                nummpy 

import numpy as np
'''A = np.array(5)
print(A)

np.ndim(A)
print(A)'''


'''
one = np.array([1,2,3,4,5])
two = np.array([[1,2,3],[4,5,6]])
three = np.array([[[1,2,3],[4,5,6]],[[1,2,3],[4,5,6]]])
np.ndim(one)
np.ndim(two)
np.ndim(three)
print(one)
print(two)
print(three)'''

 #                        matrix

'''arr = np.array([1,2,3,4,5,6,7,8,9,10,11,12])
# newarr=arr.reshape(4,3)
# newarr=arr.reshape(2,6)
newarr=arr.reshape(6,2)
newarr=arr.reshape(2,3,2)
print(newarr)'''

'''arr = np.array([1,2,3,4])
print(arr[1])
print(arr[0])
print(arr[2] + arr[3])'''

'''arr = np.array([[1,2,3,4,5],[6,7,8,9,10]])
print(arr[0,1])
print(arr[1,4])
print(arr[1,2])

arr = np.array([[[1,2,3],[4,5,6]],[[7,8,9],[10,11,12]]])
print(arr[0,1,2])
print(arr[1,1,0])'''

'''a1 = np.array([1,2,3,4,5,6,7])
print(a1[1:5])
print(a1[4:])
print(a1[5:])

a2= np.array([[1,2,3,4,5],[6,7,8,9,10]])
print(a2[1,1:3])
print(a2[0,1:])
print(a2[1,0:4])'''

'''a3=np.array([[[10,11,12],[13,14,15],[16,17,18]],
            [[20,21,22],[23,24,25],[26,27,28]],
            [[30,31,32],[33,34,35],[36,37,38]]])
print(a3)
print(a3[:2,1:,:2])
print(a3.shape)'''

#              copy , view
'''arr=np.array([1,2,3,4,5])
copy=arr.copy()
copy[0]=33
print(arr)
print(copy)

view=arr.view()
view[0]=42
print(arr)
print(view)'''

#        append , insert , delete
'''
a= np.array([[1,2,3],
            [4,5,6]])
# print(a)
print(np.append(a, [7,8,9]))
print(np.append(a, [[7,8,9]],axis = 0))
print(np.append(a, [[5],[8]],axis = 1))'''

'''a = np.array([[1,2],
             [3,4],
             [5,6]])
print(a)'''

'''a = np.array([[1,2,3,12],
            [9,5,6,11],
            [8,4,10,7]])
print(a)
print(np.delete(a,9))
print(np.delete(a,1,axis=1))
print(np.delete(a,1,axis=0))'''

#                 Hstack

'''a = np.array([1,2,3])
b= np.array([4,5,6])
print(a,b)
print(np.ndim(a),np.ndim(b))
result = np.hstack((a,b))
print(result,np.ndim(result))

result = np.vstack((a,b))
print(result,np.ndim(result))'''

#                  pandas $  data frame

import pandas as pd

s=pd.Series([1,7,2,8,5])
# print(s)

s=pd.Series([1,7,2,8,5],index = ["v","i","n","a","y"])
# print(s)
# print(s["i"])
# print(s["y"])

data = pd.DataFrame({'name':['vinay','divya','kavya','ramya','lavanya'],
                    'age':[25,24,23,22,63]})
# print(data)
# print(data.head())

data=pd.DataFrame({'name':["ram","praveen","yam","mahesh","om"],
                    'age':[25,36,52,63,54]}, index=['C1','C2','C3','C4','C5'])
# print(data)

data=pd.DataFrame({'name':["ram","praveen","yam","mahesh","om"],
                    'age':[25,36,52,63,54]}, index=['1','2','3','4','5'])
# print(data)

data=pd.DataFrame({'name':["ram","praveen","yam","mahesh","om"],
                    'age':[25,36,52,63,54]}, index=[1,2,3,4,5])
# print(data)

print(data['name'])
print(data['age'])

print(data.loc[1,'name'])
print(data.iloc[2,0])

#                pandas concatenation

'''names = pd.DataFrame({'Names':['vinay','kumar','ram','yam','sam','rom','om']})
ages= pd.DataFrame({'Age':[25,36,52,41,74,85,96]})
names2= pd.DataFrame({'Names':['bby','bng','bujji','kanna','honey','oy']})

print(names)
print(ages)
print(pd.concat([names,ages],axis = 1))
print(pd.concat([names,names2],axis=0).reset_index())'''


#               create reading files

data = pd.DataFrame({'Names':['vinay','ram','charan','pavan','sai','baba','om'],
                    'Age':[25,26,35,69,85,44,21],
                    'University':['BHU','OU','JNTU','VK','DU','OUS','JUN']},index=[1,2,3,4,5,6,7])

# print(data)
# data.to_csv('students.csv')
# # print(data.to_csv('students.csv',index=False))
# new_data=pd.read_csv('D:\python\python practice\students.csv')
# print(new_data)

#                groupby fun
           
'''print(pd.date_range(start='2022-02-03', end='2022-02-10'))

print(pd.date_range(start='2023-02-03', end='2023-12-10',freq='M'))

print(pd.date_range(start='2022-02-03', end='2022-02-10',freq='B'))
'''

#                 top commands

data['city']=['vizag','secbad','medchal','patna','pune','ap','up']
# print(data)

data.columns=['NAME','AGE','UNIVERSITY','CITY']
# print(data)

# print(data.drop(['AGE'],axis=1))
data['Marks']= [201,210,235,420,412,254,265]
# print(data)
data['Marks'] = data['Marks'].apply(lambda x:x/5)
# print(data)

# data = pd.read_csv('/content/diabates.csv')
# # print(data.head())

# data.shape

#               dublicats

data = pd.DataFrame({'team': ['A','A','A','A','B','B','B','B'],
         'points':[10,10,12,12,15,17,20,20],
         'assists': [5,5,7,9,12,9,6,6]})
# print(data)
# print(data[data.duplicated()])

'''list_ = [1,2,3,4,5,6,9,10,12,55,60]
Q1 = np.percentile(list_,25)
Q3 = np.percentile(list_,75)
IQR = Q3 - Q1
# print(Q1)
# print(Q3)
# print(IQR)
low = Q1 - 1.5 * IQR
upp = Q3 + 1.5 * IQR
outliers = []
for i in list_:
    if ((i > upp) or (i < low)):
        outliers.append(i)
# print(outliers)

for i in list_:
    if i not in outliers:
        print(i)
list_= [i for i in list_ if i not in outliers]
# print(list_)'''

#                   EDA

# import random
# import matplotlib.pyplot as plt

'''pos = [1,2,3,4,5,6,7,8,9,10,11]
runs = [123,64,97,32,10,88,25,21,11,2]
plt.plot(pos,runs)

plt.plot(pos,runs)
plt.title("Position Wise Scores")'''

# import seaborn as sns

'''date = [12,16,3,6,8,2,5,10,23,29,17,5,14]
month = [1,2,3,4,5,6,7,8,9,10,11,12]

df= pd.DataFrame({'dates':date,'months':month})
sns.lineplot(x = 'dates',y = 'months',date=df)
plt.show()
print(plt.show())'''

'''df = pd.read_csv('/content/weather.csv')
df.head(1)'''

'''plt.figure(figsize=(8,5))
bins = np.arange(0,25,5)

sns.distplot(df['Wind Speed'], bins = bins, kde =False,
             hist_kws = {'color':'c','edgecolor':'k','linewidth':2,'linestyle':'--','alpha':0.9},
             label = 'Wind Speed km/h')
plt.title("Histogram of wind speed(km/h)",fontsize = 17)
plt.xticks(bins)
plt.grid(color = 'k', linestyle = '--',linewidth = 0.5)
plt.legend()
plt.show()'''

#             mean mode median

# population = np.arange(5,50,5)
# pop_mean = sum(population)/len(population)
# # print(population)
# # print(pop_mean)

# sq_pop_deviation = [(i-pop_mean)**2 for i in population]
# pop_variance = sum (sq_pop_deviation)/len(population)
# # print(sq_pop_deviation)
# # print(pop_variance)

# # print('population variance : {}'.format(round(pop_variance,2)))

# sample = np.arange(5,25,5)
# # print(sample)
# s_mean = sum(sample)/len(sample)
# # print(s_mean)

# sq_s_deviation = [(i-s_mean)**2 for i in sample]
# s_variance = sum(sq_s_deviation)/len(sample) - 1
# # print(s_variance)


#               standed deviation
# import math
# # print(pop_variance)
# std_dev = math.sqrt(pop_variance)
# print('standard deviation :{}'.format(round(std_dev,2)))

#               statistics
'''import matplotlib.pyplot as plt
from palettable.colorbrewer.qualitative import pastel1_7

names= ['groupA','groupB','groupC','groupD']
size = [12,11,3,30]

my_circle = plt.Circle( (0,0), 0.7, color='white')

from palettable.colorbrewer.qualitative import pastel1_7
plt.pie(size, labels=names,colors=pastel1_7.hex_colors)
p = plt.gcf()
p.gca().add_artist(my_circle)
plt.show()'''

#                 cental tendency case study

# data = pd.read_csv('D:\python\Wine Quality Dataset.csv')
# print(data.head())
# print(data.shape)

# print(data.columns)
# print(data.info())

# plt.figure(figsize = (11,6))
# sns.histplot(data = data ,x = 'fixed acidity', color = 'orange',
#              edgecolor = 'linen', alpha = 0.5, bins = 5)
# plt.title("Histogram of Fixed Acidity")
# plt.xlabel('Fixed Acidity')
# plt.ylabel('Count')
# plt.show()