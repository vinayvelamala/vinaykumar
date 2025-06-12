
'''a = 1
print(a)

a,b = 10,20
print(a*b)

a,b = 10,20
print(a,b)'''

'''print("========= SBI ATM =========")
Pin = input("Enter Your Pin :")
cash = int(input("ENTER YOUR AMOUNT : "))
remainingAmount = 40000-cash
print('Take Your Cash :',cash,'\n','Remaining Amount:',remainingAmount)
print('Thank You For Using ATM')'''

'''person = {
    "name": "vinay",
    "age": 24
}
print(person["name"]) 
print(person["age"]) 

person = {
    "name": "vinay",
    "age": 25
}
print(f"Name: {person['name']}, Age: {person['age']}")'''
'''
if 5 > 2:
    print("Five is greater than two!")'''


'''print("=========== SBI ATM ===========")
pin = input("Enter your PIN: ")
cash = int(input("Enter your cash: "))
RemainingAmount = 50000 - cash
print('Take your cash :',cash,'\n','Remaining_Amount:',RemainingAmount)
print('ThankYou for Using SBI ATM')'''


'''txt = "We are the so-called \"Vikings\" from the north."
print(txt)'''



mylist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango","orange","water_melon","grapes"]
#print(mylist[:4])

# print(mylist[-1])
#print(mylist[1:10:3])

#print(type(None))

'''def calc():
    a = 10
    b = 20
    c = a+b
    return c  
v = calc()
print(v) '''

'''a = [12,23,45,345]
x = bytes(a)'''

list = [ 'abcd', 786 , 2.23, 'vinay', 70.2 ]
tinylist = [123, 'vinay']

'''print(list)
print(list[0])
print(list[1:3])
print(list[2:])
print(tinylist *2)
print(list + tinylist)

a = range(0,50,2)
for i in a:
    print(i)'''


'''import sys
a = int(sys.argv[10])
b = int(sys.argv[20])
add = a + b
print(add)'''

'''x = -6
if x > 0:
    print('x is a positive')
    print('am inside if')
else:
    print('x is not positive')

x = 10
if x > 0:
    print('x is a positive')
    print('am inside if')
else:
    print('x is not positive')'''

'''x = 0
if x > 0:
    print('x is a positive')
    print('am inside if')
elif x < 0:
    print('x is negative')
else:
    print('x is zero')'''


a = 100
b = 20
c = 30

# Find the greatest number using if-else
'''if a > b and a > c:
    greatest = a
elif b > a and b > c:
    greatest = b
else:
    greatest = c

print("The greatest number is:", greatest)'''


'''a=100
b=50
c=20
if a>b and a>c:
    Greater = a
    print("a is greater")
elif b>a and b>c:
    Greater = b
    print(b is Greater)
else:
    Greater = c

print("gratest number :",Greater)'''
                                            # TASK -- 1




'''Electricity bill generation

present reading
previous reading

units>=500 --> unit rate is 7Rs
units>=300 and < 499 --> 5Rs
units>=100 and < 299 --> 2Rs
units > 0 and <99 --> 1 Rs'''

'''present_reading = int(input("Enter your present_Bill:" ))
previous_reading = int(input("Enter your previous_:" ))
units = present_reading - previous_reading
if units >=500:
    print("present_Bill is", units,"Your unit rate is 7rs")

elif units >=300 and units<499 :
    print("present_Bill is", units,"Your unit rate is 5rs")

elif units >=100 and units<299 :
    print("present_Bill is", units,"Your unit rate is 2rs")

elif units >0 and units<99 :
    print("present_Bill is", units,"Your unit rate is 1rs")

else:
    print("out of range")'''

'''----------------------------------------------
Bill generation

input: purchase cost
CustType: E/N
Gender : F/M

>=10000 --> 20% discount --> E & F --> voucher (1000Rs)
                             E & M --> 1200Rs
                             New   --> 500Rs       
----------------------------------------------------
>=5000 and <= 9999 --> 10% dis --> E & F --> 500Rs
                                   E & M --> 800 
                                   New --> 200

----------------------------------------------------
<=4999  --> no discount
----------------------------------------------------'''

'''Pcost = int(input('Enter Your Purchase Cost:'))
CustType = input('Enter your CustType E/N: ')
GType = input('Enter your GType F/M: ')
if Pcost >= 10000:
    cost = Pcost - (Pcost*0.2)
    if(CustType == 'E') and (GType == 'F'):
        print('Effective price:',cost)
        print("Your are eligble for 1000 voucher")
    elif(CustType == 'E') and (GType == 'M'):
        print('Effective price:',cost)
        print("Your are eligble for 1200 voucher")
    else:
        print('Effective price:',cost)
        print("Your are eligble for 500 voucher")
    
elif Pcost >= 5000:
    cost = Pcost - (Pcost*0.1)
    if(CustType == 'E') and (GType == 'F'):
        print('Effective price:',cost)
        print("Your are eligble for 500 voucher")
    elif(CustType == 'E') and (GType == 'M'):
        print('Effective price:',cost)
        print("Your are eligble for 800 voucher")
    else:
        print('Effective price:',cost)
        print("Your are eligble for 200 voucher")
else:
    Pcost <= 4999
    print('NO Discount')'''


#k = {'shiva':'ram',1:'ling'}

                     #  Task 2
# l = [1,2,3,6,8,10]
# for i in l:
#     print(sum(l))
#     break


# v = [1,2,45,10,20]
# for i in v:
#     print(sum(v))
#     break

# v= [1,1,1,1,10]
# print(sum(v))

# s = 0
# for i in l:
#     s =s+i
#     print(s)

# k = [1,2,3,4,6,8]
# for i in l:
#     print(i ** 3)



''' 1. Print a Pattern:
Problem:
Write a Python program that prints the following pattern:
*
**
***
****
***** '''

# for i in range(1,6):
#    print('*' * i)

# n = int(input('Ener a no:'))
# for i in range(1,n+1):
#    print('*' * i)

# v = int(input('enter a num: '))
# for i in range(1,v+1):
#     print('*' * i)

''' 2. Sum of Numbers:
Problem:
Write a Python program that takes an integer n and returns
 the sum of all integers from 1 to n (inclusive).'''

# n = int(input("Enter a number: "))
# sum_no = sum(range(1,n + 1))
# print(f"sum of numbers from 1 to {n} is {sum_no}")



'''3. Even or Odd:
Problem:
Write a Python program that checks whether a number
 entered by the user is even or odd.'''

#num = int(input("Enter a number: "))
#if num % 2 == 0:
#    print(f"{num} is even")
#else:
#    print(f"{num} is odd")

# num = int(input('enter a num: '))
# if num % 2 == 0:
#     print(f"{num}it is even num")
# else:
#     print(f"{num} it is a odd number")

# num = int(input('enter a num: '))
# if num % 2 == 0:
#     print('it is even num :',num)
# else:
#     print('it is a odd number :',num)


'''
4. Multiplication Table:
Problem:
Write a Python program that takes a number and prints 
the multiplication table for that number (up to 10).
'''

#n= int(input("Enter a number: "))
#for i in range(1,11):
#    print(f"{n} * {i} = {n*i}")

# for i in range(1,101):
#    for j in range(1,11):
#        print('%d * %d = %d' %(i,j,i*j))
# print(" ")



'''
5. Factorial Calculation:
Problem:
Write a Python program that calculates the factorial
 of a given number.
 '''

# n= int(input("Enter a number: "))
# factorial  = 1
# for i in range(1, n+1):
#     factorial *= i
# print(f"The factorial of {n} is {factorial}")
    
'''
7. Prime Number Checker:
Problem:
Write a Python program that checks if a given number
 is prime.
'''

# n = int(input("Enter a number: "))
# if n > 1:
#     for i in range(2,n):
#         if n % i == 0:
#             print(f"{n} is not a prime number")
#             break
#     else:
#         print(f"{n} is a prime no")
# else:
#     print(f"{n} is not a prime no")       



'''
20. Implement a Basic Calculator:
Problem:
Write a Python program that implements a simple calculator
to perform basic operations like addition, subtraction,
 multiplication, and division.
 '''


# def add(x, y):
#     return x + y

# def subtract(x, y):
#     return x - y

# def multiply(x, y):
#     return x * y

# def divide(x, y):
#     if y != 0:
#         return x / y
#     else:
#         return "Cannot divide by zero"

# print("Select operation:")
# print("1. Add")
# print("2. Subtract")
# print("3. Multiply")
# print("4. Divide")

# choice = input("Enter choice (1/2/3/4): ")
# num1 = float(input("Enter first number: "))
# num2 = float(input("Enter second number: "))

# if choice == '1':
#     print(f"{num1} + {num2} = {add(num1, num2)}")
# elif choice == '2':
#     print(f"{num1} - {num2} = {subtract(num1, num2)}")
# elif choice == '3':
#     print(f"{num1} * {num2} = {multiply(num1, num2)}")
# elif choice == '4':
#     print(f"{num1} / {num2} = {divide(num1, num2)}")
# else:
#     print("Invalid input")

'''
Reverse a String
Problem:
Write a Python program to reverse a given string.
'''

# def reverse_string(s):
#     return s[::-1]
# string = input("Enter a string: ")
# print("Reversed string:", reverse_string(string))

'''
2. Find the Length of a String
Problem:
Write a Python program that takes a string input from the 
user and returns the length of the string.
'''

# s = input("Enter a string: ")
# print("length of the string is:",len(s))

'''
3. Check if a Number is Positive, Negative, or Zero
Problem:
Write a Python program that checks if a number entered
 by the user is positive, negative, or zero.
'''

# n = int(input("Enter a number: "))
# if n > 0:
#     print(f"{n} is positive")
# elif n < 0:
#     print(f"{n} is negative")
# else:
#     print(f"{n} is zero")

# n = int(input("enter a num: "))
# if n > 0:
#     print("it is positive no:",n)
# elif n < 0:
#     print("it is negative:",n)
# else:
#     print("it is zero:",n)



'''
4. Check if a Character is a Vowel or Consonant
Problem:
Write a Python program that checks if a character
 entered by the user is a vowel or consonant.
 '''

# char = input("Enter a character: ").lower()
# if char in 'aeiou':
#     print(f"{char} is a vowel")
# else:
#     print(f"{char} is a consonant")


# str = "vinaykumar"
# vowels = ['a', 'e', 'i', 'o', 'u']
# for char in str:
#     if char in vowels:
#         print(char,"it is vowel")
#     else:
#         print(char,"it is consonate")




# str = "vinaykumar"
# vowel = ['a','e','i','o','u']
# vowels = ''
# consonants =''
# for char in str:
#     if char in vowel:
#         vowels += char
#     else:
#         consonants += char
# print("vowels:",vowels)
# print("consonants:",consonants)


'''
 Print All Odd Numbers Between 1 and 50
Problem:
Write a Python program to print all odd numbers 
between 1 and 50.
'''

# for num in range(1,51,2):
#     print(num)

'''
 Find the Second Largest Number in a List
Problem:
Write a Python program that finds the second 
largest number in a given list of numbers.
'''
# num = [10,5,50,45,63,99]
# num.sort()
# print("max high number:",max(num))
# print("min high number:",min(num))
# print("first largest number is:",num[-1])
# print("second largest number is:",num[-2])
# print("third high number is:",num[-3])


'''
Find the Sum of All Multiples of 3 and 5 Below 1000
Problem:
Write a Python program that finds the sum of all 
multiples of 3 and 5 below 1000.
'''
# total = sum(i for i in range(1000) if i % 3 == 0 or i % 5 == 0)
# print(f"The sum of all multiples of 3 and 5 below 1000 is {total}")

#                                       task 5
# l = [1,2,3,4,5,8,9,10]
# for i in l:
#     print(i)
#     if(i%2 == 0):
#         print("even")
#         break
# else:
#     print("odd")

# l = [1,2,3,4,5,8,9,10]
# for i in l:
#     print(i)
#     if i%2 == 0:
#         print("it is even no")
#     else:
#         print("odd no")


# l = [10,20,30,44,21]
# for i in l:
#     if i % 2 == 0:
#         print("it is even: ",i)
#     else:
#         print("it is odd: ",i)



# l = int(input("enter a num: "))
# if l%2 == 0:
#     print("it is even")
# else:
#     print("it is odd")    



# l = [10,20,30,40,50]
# for i in l:
#     if(i == 30):
#         continue
#     print(i)
# else:
#     print("loop complete")


k = "vinay"
# for i in k[::-1]:
#     print(i)

# for i in range(len(k)-1,-1,-1):
#     print(k[i],end='')

# for i in range(len(k)):
#     print(k[i],end='')

# for i in range(len(k)6,1,-1):
#     print(k[i],end='')

# s = ""
# for i in k:
#     s = i + s
# print(s)


# s = int(input("Enter a number:"))
# sum_no = sum(range(s+1))
# print(f"sum of the number 1 to {s} is {sum_no}")



# s=0
# for i in range(1,21):
#     s=s+i
# print(s)

# row = int(input("Enter no. row:"))
# column = int(input("enter no. columns:"))
# for i in range(row):
#     for j in range(column):
#         print("*", end = " ")
#     print()

'''
Reverse a String
Problem:
Write a Python program to reverse a given string.
'''

# n = "sanajana reddy"
# print(n[::-1])
# for i in range(len(n)-1,-1,-1):
#     print(n[i],end = "")

'''
Find the Length of a String
Problem:
Write a Python program that takes a string input from the user and returns the length of the string.
'''
# s = input("Enter a string: ")
# print(len(s))


# def add (x,y):
#     return(x+y)

# def subtract(x,y):
#     return(x-y)

# def Multiply(x,y):
#     return(x*y)

# def divide(x,y):
#     if y != 0:
#         return(x/y)
#     else:
#         return "connot be determind"

# print("1.add")     
# print("2.subtract")  
# print("3.mult")     
# print("4.div")        
# choice = (input("plese selet 1/2/3/4:"))
# n1 =int(input("enter first nmber: "))
# n2 =int(input("enter secound number: "))

# if choice == '1':
#     print(f"{n1} + {n2} = {add(n1, n2)}")
# elif choice == '2':
#     print(f"{n1} - {n2} = {subtract(n1,n2)}")
# elif choice == '3':
#     print(f"{n1} * {n2} = {Multiply(n1,n2)}")
# elif choice == '4':
#     print(f"{n1} / {n2} = {divide(n1,n2)}")
# else:
#     print("out of order")



# print(" welcome to SBI")
# print("insert your your card")
# print (input("ENTER YOUR ATM PIN:"))
# print("Enter your cash: ")


# print("========= SBI ATM =========")
# Pin = input("Enter Your Pin :")
# cash = int(input("ENTER YOUR AMOUNT : "))
# remainingAmount = 40000-cash
# print('Take Your Cash :',cash,'\n','Remaining Amount:',remainingAmount)
# print('Thank You For Using ATM')


# row = int(input("Enter a row number: "))
# column = int(input("Enter a column no:"))
# for i in range(row):
#     for j in range(column):
#         print("*", end=" ")
#     print()        


# row = int(input('Enter row number: '))
# column = int(input('Enter column no:'))
# for i in range(row):
#     for j in range(column):
#         print("*",end=" ")
#     print()


# v = int(input('enter a num: '))
# sum_no = sum(range(v+1))
# print(f"The number from 1 to {v} total is: {sum_no}")


# for i in range(1,6):
#     print("*" *i)


# for i in range(1,50):
#     print('*' *i)


#                                               TASK ----  5

# INPUT = [L,L,W,L,W]
# OUTPUT = [W,W,L,L,L,]

# V = ['L','L','W','L','W']
# V.sort()
# print(V)


# s = []
# for i in V:
#     if i == 'W':

#         s.append(i)
#         print(s)

# V.append
# print(V)


# days = ['sun','mon','tue','wed','thu','fri','sat']
# result1 = ['sat','fri','thu','wed','tue','mon','sun']
# result2 = ['tas','irf','uht','dew','eut','nom','nus']

# result1 = days[::-1]  # Reverse the order of days
# result2 = [day[::-1] for day in days]  # Reverse each string in the list
# print(result1)
# print(result2)

# for i in range(len(days)-1,-1,-1):
#     print(days[i])

# for i in range(len(days)-1,-1,-1):
#     print(days[i],end = ",",)
#     print(days[i][::-1])
    

# for i in range(len(days)-1,-1,-1):
#     print(days[i],end = ",")

# days = ['sun','mon','tue','wed','thu','fri','sat']
# result = [day[::-1] for day in days]
# print(result)
#                   task 6

# days = ['sun','mon','tue','wed','thu','fri','sat']
# r1 = days[::-1]
# r2=[]
# for i in range(len(days)):
#     r2.append(days[i][::-1])
# print(r1)
# print(r2)
   
# str = 'vinaykumar'
# str1= str[::-1]
# str2=[]
# for i in range(len(str)):
#     str2.append(str[i][::-1])
# print(str1)
# print(str2)

#                          LIST OPERATIONS

'''1. Creating a List'''
m = [1, 2, 60, 3,20, 4, 5,6,10]

'''2. Accessing Elements'''
# print(m)
# print(m[1])
# print(m[-1])

'''3. Modifying Elements'''
# m[1] = 10
# m[2] = 20
# print(m)

'''4. Appending Elements'''
# m.append(30)
# print(m)
# m.append([11,12,13,14])
# print(m)

'''5. Inserting Elements'''
# m.insert(2,20)
# print(m)

'''6. Removing Elements'''
# m.remove(1)
# print(m)

'''You can also use pop() to remove an element'''
# pop_ele = m.pop(2)
# print(m)
# print(pop_ele)

'''8. Finding the Length of a List'''
# print(len(m))

'''9. Checking if an Element Exists'''
# print(m)
# print(20 in m)
# print(50 in m)

'''10. Slicing a List'''
# print(m)
# print(m[1:4])
# print(m[0:8:2])
# print(m[:3])
# print(m[3:])

'''11. Reversing a List'''
# r = m[::-1]
# print(r)
# print(m.reverse)

'''12. Sorting a List'''
# print(m)
# m.sort()
# print(m)

'''13. Concatenating Lists'''
m2 = [10,20,30,60,50]
# print(m+m2)


'''14. Repeating Lists'''
# r = m * 3
# print(r)


'''15. Copying a List'''
# c = m.copy()
# print(m, "before")
# print(c)
# print(m, "after")

'''16. Finding Index of an Element'''
# m.index(20)
# print(m)
# print(m.index(5))

'''17. Counting Occurrences of an Element'''
# r = m+m2
# r.sort()
# print(r)
# print(r.count(10))

'''18. Nested Lists'''
# m.append([10,20,30,50])
# m.append([1,13,14,15,50])
# print(m)
# print(m[9][3])
# print(m[10][1])

''' 19. clear'''
# print(m.clear())
# print(m)
# print(m2.clear())

# square = []
# for i in range(1,11):
#     square.append( i ** 2)
# print(square)


# even = [i for i in range(0,21) if (i%2 == 0)]
# print(even)


#                  TUPLE
''' 1. Creating a Tuple'''
t = (1,2,3,4,5,6)
# print(t)
# print(type(t))

''' 2. Accessing Elements'''
# print(t[1])

''' 3. Slicing a Tuple'''
# print(t[1::])

''' 4. Concatenating Tuples '''
t2 = (4,5,6)
# print(t + t2)

''' 5. Repeating a Tuple'''
# t1 = (1,2) * 3
# print(t1)

''' 6. Finding the Length of a Tuple'''
# print(len(t))

''' 7. Checking Membership'''
# print(2 in t)
# print(10 in t)

''' 8. Tuple Unpacking'''
# a,b,c = t
# print(a,b,c)

''' 6. Question: Can tuples contain different data types?'''
# t2 = (1,"vinay",3.14,[5,6,7],(8,9))
# print(t2)

# t1 = (1,2,3)
# t2 = (3,4,5)
# print(t1 + t2)


d = {'v1':1,'v2':2,'v3':3,'v4':4}
# sum = 0
# for value in d.values():
#     sum=sum+value
#     print(sum)

# print(sum(d.values()))


# a = eval(input("enter how many keys values pairs in dict"))
# d = {}
# for i in range(a):
#     k = eval(input("enter key:"))
#     v= eval(input("enter value:"))
#     d[k] =v
#     print(v)


#                               PANDAS

import pandas as pd
import numpy as np


#data = (['a','b','c','d'])
# s = pd.Series(data,index =[1,2,3,4])
# print(s)

# s = pd.Series(data,index=[10,20,30,40])
# print(s)


# data = [1,2,3,4,5,6,7]
# df = pd.DataFrame(data)
# print(df)

# data = [10,20,30,40]
# df = pd.DataFrame(data)
# print(df)

# df = pd.Series(data)
# print(df)



# d = [['vinay',25],['sanjana',26],['yamini',28]]
# df = pd.Series(d,index = [1,2,3])
# print(df)

# df = pd.DataFrame(d,columns =['Name','Age'])
# print(df)


# data = {'Names': ['vinay','sanjana','yamini','sunil','teja'],
#         'Age': [25,26,24,25,23]}
# df = pd.DataFrame(data)
# print(df)

data = {'Names': ['vinay','sanjana','yamini','sunil','teja'],
        'Age': [25,26,24,25,23]}
df = pd.DataFrame(data,index = [1,2,3,4,5])
print(df)

'''1.Selecting Columns
2.Filtering Rows
3.Adding New Columns
'''
# names = df['Names']
# print("Names Column:")
# print(names)

# age = df['Age']
# print("age_column:",age)

# age_filter = df[df['Age']>25]
# print("upper age of 25:\n",age_filter)

# df['City'] = ['hyd','vp','vz','dl','mh']
# print(df)


# data = {'Names': ['vinay','sanjana','yamini','sunil','teja'],
#         'Age': [25,26,24,25,23]}
# df = pd.DataFrame(data,index =['rank1','rank2','rank3','rank4','rank5'])
# print(df)

# df = pd.read_csv("D:\python\Automobile_data.csv")
# print(df.head())
# print(df)



# pkl_data = {'Teams': ['titans', 'gaints','delhi','punari','umumabi',
#                       'titans','delhi','punari','tamil','hariyana'],
#                       'Rank': [1,2,3,4,5,1,2,3,5,6],
#                       'Points': [876,960,365,857,854,412,965,421,256,635]}
# df = pd.DataFrame(pkl_data)
# print(df)

# pkl_data = {'Teams': ['titans', 'gaints','delhi','punari','umumabi',
#                       'titans','delhi','punari','tamil','hariyana'],
#                       'Rank': [1,2,3,4,5,1,2,3,5,6],
#                       'Points': [876,960,365,857,854,412,965,421,256,635]}
# df = pd.DataFrame(pkl_data)
# # print(df)
# k = df.groupby('Teams')
# for i in k:
#     print(i)


        # task 10

'''1) Find each company’s Higesht price car by creating dataframes 
-- use the data from Automobile_data.csv'''

# o = open("D:\python\Automobile_data.csv",mode = 'r')
# print(o.read())

# data = pd.read_csv("D:\python\Automobile_data.csv")
# data['price'] = pd.to_numeric(data['price'], errors='coerce')
# data.dropna(subset=['price'], inplace=True)
# high_price_car = data.loc[data.groupby('company')['price'].idxmax()]
# result = high_price_car[['company','price']]
# result.to_csv("D:\python\high_price_car.csv",index=False)
# print("done task")

# d = pd.read_csv("D:\python\Automobile_data.csv")
# n = d[['company','price']]
# n.to_csv('dummydata.csv',index = False)
# print("done task")

''''2) Read the data from CSV --> Data.csv
Extract the columns Duration,Maxpulse
move the data of above columns to new csv file'''

# data = pd.read_csv("D:\python\data.csv")
# new_data = data[['Duration','Maxpulse']]
# new_data.to_csv('NewData.csv',index =False)
# print("Data extracted and saved to NewData.csv")




'''3) 
    'Name': ['Luke','Gina','Sam','Emma'],
    'Status': ['Father', 'Mother', 'Son', 'Daughter'],
    'Birthyear': [1976, 1984, 2013, 2016]

Create a DF and add new column age to the above DF

Filter the result age > 18'''

# data = {'Name': ['naidu','sridevi','vinay','vinni'],
#     'Status': ['Father', 'Mother', 'Son', 'Daughter'],
#     'Birthyear': [1976, 1984, 2013, 2016]}
# df = pd.DataFrame(data,index=[1,2,3,4])
# df['Age'] = [46,39,13,9]
# filter_age = df[df['Age']>18]
# print(filter_age)


# data = { 'Name': ['Luke', 'Gina', 'Sam', 'Emma'],
#          'Status': ['Father', 'Mother', 'Son', 'Daughter'],
#            'Birthyear': [1976, 1984, 2013, 2016] }
# df = pd.DataFrame(data,index=[1,2,3,4])
# df['Gender'] = ['M','F','M',None]
#print(df)
# df.dropna(inplace=True)
# print(df)
# df.fillna('F',inplace=True)
# print(df)

# current_year = 2025
# df['Age'] = current_year - df['Birthyear']
# filter_age = df[df['Age']>18]
# print(filter_age)



#                 FILE HANDLING 


# f = open("D:\python\dummy_txt.txt",mode = 'r')
# print(f.read())fbf

# f = open("D:\python\dummy_txt.txt",'w')
# f.write("kumar")
# print(f)


# f = open("D:\python\dummy_txt.txt",mode = 'a')
# f.write('\nou can choose the mode that suits your needs depending on whether you want to append to or overwrite the file content while having the ability to read from the file.')
# print(f)


# file = open('D:\python\dummy_txt.txt', 'r')
# for line in file:
#     print(line.strip())
# file.close()

# try:
#     file = open('D:\python\dummy_txt.txt', 'r')
#     c = file.read()
# except FileNotFoundError:
#     print("file not found")
# finally:
#     file.close()


# try:
#     file = open('filename.txt', 'r')
#     content = file.read()
# except FileNotFoundError:
#     print('File not found.')
# finally:
#     file.close()


#                        NUMPY


import numpy as np

# a =np.array([[1,2,3,4],[5,6,7,8]])
# print(a)

# a =np.array([[1,2,3,4,6,7],[5,6,7,8,5,8],[9,6,3,8,4,5]])
# print(a)
# print(a.ndim)  #dimensinons
# print(a.shape)
# print(a.itemsize)
# print(a.nbytes)
# print(a)
# print(a[0,1])
# print(a[0,5])
# print(a[2,3])
# print(a[0,:])    #total row result
# print(a[:,5])
# print(a+10)
# print(a**2)

# arr = np.array([1,2,3,4,5])
# arr = arr ** 2
# print("squares of array",arr)

# arr = np.array([1,2,3,4,5])
# arr = arr *2
# print("multi of array",arr)


# data = np.array([23,45,67,34,89,12,78])
# mean = np.mean(data)
# print(mean)

# arr1 = np.array([1, 2, 3, 4, 5])
# arr2 = np.array([[1, 2, 3], [4, 5, 6]])
# arr_sum = arr1 + arr1
# print(arr_sum)
# print(np.max(arr1))
# print(arr1[2])
# print(arr1[1:3])
# arr1[2] = 10
# print(arr1)
# print(np.sum(arr1))


''' How can you generate an array of zeros or ones? '''
# zeros = np.zeros((3,3))
# print(zeros)

# ones = np.ones((2,3))
# print(ones)

''' How do you perform element-wise operations in NumPy?'''
# a= ([1,2,3])
# b = ([4,5,6])
# sum_arr = a+b
# print(sum_arr)

''' How do you calculate the dot product of two arrays?'''
# arr1 = np.array([[1, 2], [3, 4]])
# arr2 = np.array([[5, 6], [7, 8]])

# product = np.dot(arr1,arr2)
# print(product)


''' How can you reshape a NumPy array?'''
# a = np.array([1,2,3,4,5,6])
# print(a.reshape((2,3)))
# print(a.reshape((3,2)))

''' How do you find the maximum and minimum values in an array?'''
# print(np.max(a))
# print(np.min(a))


''' How do you generate random numbers with NumPy?'''
# random_no = np.random.rand(5)
# print(random_no)












