# a='vinaylumar'
# for i in a:
#     print(i)

# for i in "vinaykumar":
#     if i=='k':
#         break
#     print(i)

# for i in "vinaykumar":
#     if i=='k':
#         continue
#     print(i)

v=[2,1,52,56,87,32,'vinay']
# # v.append("vinay")
# v.extend([66,55,22,11])
# print (v.count(v))
v.insert(1,"10")
# print(v)

# for i in 'vinaykumar':
#     if i=='y':
#         break
# print(i)


# x=9
# y=5
# print(x+y)
# z=x/y
# z

# import numpy as np
# import pandas as pd
# df1=pd.read_csv("../data/iris_data1.csv")
# df2=pd.read_csv("../data/iris_data2.csv")
# df3=pd.read_csv("../data/iris_data3.csv")
# df4=pd.read_csv("../data/iris_data4.csv")
# df1.head()

'''
1. Python program assign function to a variable'''

# def display(str):
# 	return 'Hai ' + str

# message = display("vinay")
# print(message)

# s = "apple"
# print(s[::-1])
# print(s[0])
# print(len(s[4:]))




# userName = "Alice"
# accountBalance = 1500.50
# def calculateTotalPrice(originalPrice, taxRate):
#     return originalPrice + (originalPrice * taxRate)


# a =[]
# print(a)

 #                                    print PATTERNS

# for i in range(1,6):
#     print(i*'*')

# a=6
# for i in range(a,0,-1):
#     print(i*'*')


# for i in range(5):
#     print('*'*10)


# for i in range(5):
#     for j in range(5):
#         print("*",end='')
#     print()


# i = 0
# while i < 10:
#     print("*" * 10)
#     i += 1


# for i in range (5):
#     print("@" * 5)


#                     PATTERNS
'''RIGHT ANGLED TRIANGLE'''

# for i in range(1,6):
#     print("*"*i)


# r = int(input("enter a num:"))
# c = int(input("enter a num:"))
# for i in range(r,c):
#     print("*"*i)


''' inverted right angle triangle '''

# for i in range(5,0,-1):
#     print("*"*i)

# r = int(input("enter a numb:"))
# for i in range(r,0,-1):
#     print("*"*i)


'''left angle triangle'''
# rows = 5
# for i in range(rows):
#     print(" " * (rows-i-1)+ "*" * (i+1))

# r = int(input("enter a num:"))
# for i in range(r):
#     print(" "* (r-i-1)+"*"*(i+1))

# r = int(input('enter a num:'))
# for i in range(r):
#     print(" "*(r-i-1)+"*"*(i+1))



'''    pyramid star '''

# rows = 5
# for i in range(rows):
#     print(" " * (rows-i-1)+ "* " * (i+1))


# r = int(input("enter a numb:"))
# for i in range(r):
#     print(" "* (r-i-1)+"* "*(i+1))



'''inverted pyramid star'''
# rows = 5
# for i in range(rows,0,-1):
#     print(" " * (rows -i)+ "* " * i)

# r = int(input("enter a num:"))
# for i in range(r,0,-1):
#     print(" "*(r-i)+"* "*i)




'''Diamond Star Pattern'''
# rows = 5
# for i in range(rows):
#     print(" "*(rows-i-1)+"* "*(i+1))
# for i in range(rows -2,-1,-1):
#     print(" "*(rows-i-1)+ "* "*(i+1))


# r = int(input("enter a num:"))
# for i in range(r):
#     print(" "*(r-i-1)+"* "*(i+1))
# for i in range(r-2,-1,-1):
#     print(" "*(r-i-1)+ "* "*(i+1))





'''Hollow Square Pattern'''
# s = 5
# for i in range(s):
#     if i == 0 or i == s -1:
#         print("* "* s)
#     else:
#         print("* "+" "*(s)+" *")


# r = int(input("enter a num: "))
# for i in range(r):
#     if i == 0 or i == r-1:
#         print("* "*r)
#     else:
#         print("* "+" "*(r)+" *")



'''Hollow Pyramid Pattern'''
# r = 5
# for i in range(r):
#     for j in range(r-i-1):
#         print(" ",end="")
#     for j in range(2*i+1):
#         if j == 0 or j == 2*i or i == r-1:
#             print("*",end="")
#         else:
#             print(" ",end="")
#     print()


r = int(input("enter a num:"))
for i in range(r):
    for j in range(r-i-1):
        print(" ",end="")
    for j in range(2*i+1):
        if j == 0 or j == 2*i or i == r-1:
            print("*",end='')
        else:
            print(" ",end='')
    print()






