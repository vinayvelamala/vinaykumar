'''1. Explain the difference between a list and a tuple in Python.'''
# 1. list is mutable and you can change its elements after it is crated
# like append,remove,modif
# 2.it is defined using square brackets [] 
# tuple 
# 1.it is immutable once it is created you can cannot be chane its elements.
# 2. it is defined using paraentheses ()

'''2. What are Python decorators, and how do you use them?'''
# def decorator(func):
#     def wrapper():
#         print("before func")
#         func()
#         print("after func")
#     return wrapper

# def im_vinay():
#     print("vinay")


''' 3. How would you find the most frequent element in a list?'''


'''4. Explain the difference between Python lists and dictionaries. When would you use each?'''
# list: an ordered collection of elements,accessed by index.usded when 
# order matters
# dist: a collection of key-value pairs,accessed by keys.
# used when you need fast lookups and unique keys.


''' 5. How do you handle exceptions in Python? Provide an example.'''

''' 6. Describe the use of list comprehensions in Python and provide an example.'''
# squre=[]
# for i in range(10):
#     squre.append(i ** 2)
#     print(squre)

# squres = [x ** 2 for x in range(10)]
# print(squres)

'''7. What is the difference between shallow copy and deep copy in Python?'''

''' 8. Describe how you would remove duplicates from a list.'''
# l = [1,2,2,3,4,4,2,1,2]
# u = list(set(l))
# print(u)


''' 9. How do you read and write files in Python?'''


''' 10. Describe how you would sort a list of dictionaries by a specific key.'''
# list = [{'name':'vinay','age':'25',},{'name':'sanjana','age':'24'}]
# sort_list = sorted(list,key=lambda x: x['age'])
# print(sort_list)

''' 11. Explain how to find the second largest element in a list.'''
# list = [1,2,3,4,5,6,5]
# sort_list = sorted(set(list))
# secound_high =sort_list[-2]
# print(secound_high) 

# list  = [10,20,30,10,50,40,60]
# sort = sorted(set(list))
# secound_high = sort[-2]
# print(secound_high)

''' 12. How do you merge two sorted lists in Python?'''
# l1 =[1,2,3,4,5]
# l2 = [3,4,5,6,7,8]
# merge = sorted(l1 + l2)
# print(merge)

'''13. What is a generator in Python, and how does it differ from a list?'''


# 14. How do you read and write data from a CSV file using Pandas?
# 15. Explain how to handle missing data in a Pandas DataFrame.
# 16. Describe the process of merging/joining two DataFrames in Pandas.
# 17. How do you use the groupby function in Pandas? Provide an example.
# 18. Explain how to use NumPy for numerical operations in Python.
# 19. What libraries would you use for data manipulation and analysis in Python?
# 20. How do you handle missing values in a dataset using Python?
# 21. How do you use Pandas to merge two DataFrames?
# 22. How would you implement an ETL pipeline in Python?
# 23. Describe your experience with Apache Airflow for orchestrating workflows.
# 24. How do you handle and transform large datasets using Python?
# 25. Explain how you would use Google Cloud Dataflow with Python.
# 26. How do you interact with BigQuery using Python?
# 27. How do you profile and optimize Python code?
# 28. Explain the concept of lazy evaluation in Python.
# 29. How would you optimize a slow-running Python script?
# 30. How would you handle JSON data in Python?
# 31. What are Python generators, and how do you use them?
# 32. Given a large dataset, how would you find duplicates?
# 33. Write a Python function to reverse a string.
# 34. How would you parse a large XML file in Python?
# 35. Describe your experience with Google Cloud Dataflow.
# 36. What are the key features of Google Cloud Pub/Sub, and how have you used it in your projects?
# 37. Explain how to use Python's asyncio for asynchronous programming.
# 38. Describe the use of Python generators and how they differ from iterators.
# 39. What are some common design patterns you have used in your Python projects?
# 40. Describe a complex data pipeline you built and the challenges you faced.
# 41. How did you handle data quality issues in your previous projects?
# 42. Explain a time when you had to work with a team to solve a critical data processing issue.
# 43. Describe how you approached optimizing a slow-running data pipeline.
# 44. What steps do you take to ensure data security and compliance in your data engineering projects?
# 45. Write a function to check if a string is a palindrome.
# 46. How do you find the intersection of two lists?
''' 47. Generate a list of even numbers from 1 to 10.'''
# even_no = [i % 2 == 0 for i in range(11)]
# print(even_no)

# even_no = [i for i in range(11) if i % 2 == 0]
# print(even_no)

# for i in range(1,11):
#     if i % 2 == 0:
#         print("it is even no:",i)
        

'''48. Remove duplicates from the list [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].'''
l = [1, 2, 3, 4, 5, 6,7,5, 7, 8, 9, 10]
# l = list(set(l))
# print(l)

# unique_l = []
# for i in l:
#     if i not in unique_l:
#         unique_l.append(i)
# print(unique_l)
        

# 49. Reverse the string "VAARAHI".
# n = "VAARAHI"
# print(n[::-1])

''' 50. Find the word count in the sentence "I love my country".'''
# c = "I love my country"
# word_count = len(c.split())
# print(word_count)

''' 51. Write a break statement for numbers from 1 to 10 that stops at 7.'''
 
# for i in range(1,11):
#     if i == 7:
#         break
#     print(i)
        

''' 52. Write a continue statement for numbers from 1 to 10 that skips 7.'''
# for i in range(1,11):
#     if i == 7:
#         continue
#     print(i)

'''53. Write a Python function to check if a number is prime.'''

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

''' 54. Check if numbers from 1 to 10 are odd or even and print "Odd" or "Even" accordingly.'''
# for i in range(1,11):
#     if i % 2 == 0:
#         print("it is even no:",i)
#     else:
#         print("it is odd no:",i)


'''55. Print all numbers from 1 to 10 using the range function.'''
# for i in range(1,11):
#     print(i)

# i = 1
# while i<=10:
#     print(i)
#     i+=1

''' 56. Print the first 5 multiples of 3.'''
# for i in range(1,6):
#     print(3 * i)

'''57. Concatenate the strings "Hi" and "How are you".'''
# a = "Hi"
# b = "How are you"
# str = a + " " + b
# print(a + b)

''' 58. Update the age in the dictionary 
person = {'name': 'John', 'age': 25, 'city': 'New York'} to 30 and print the updated dictionary.'''
# person = {'name': 'John', 'age': 25, 'city': 'New York'}
# person['age'] = 30
# print(person)

''' 59. Write a Python program that uses f-strings to print "The product of 5 and 7 is 35".'''
# a = 5
# b = 7
# product = a*b
# print(f"the product of {a} and {b} is {product}")


'''60. Write a Python program that takes a sentence as input 
and reverses the order of words. Example: "Python is amazing" -> "amazing is Python".'''
str = "Python is amazing" 
a =' '.join(str.split()[::-1])
print(a)

# 61. Use a lambda function to create a list of squares of numbers from 1 to 5.
# 62. Write a Python function that takes a list as input and returns a new list containing only the unique elements.
# 63. Write a Python function to find the largest element in a list without using built-in functions.
# 64. Write a Python function to remove duplicates from a list while maintaining the order of elements.
# 65. Write a Python function to find the missing number in a sequence of integers from 1 to n. Example: numbers = [1, 2, 4, 5].
# 66. Write a Python function that takes a number as input and returns True if it's a prime number, otherwise False.
# 67. Write a Python program to capitalize the first letter of a string.
# 68. Write a Python function that accepts keyword arguments and prints them.
# 69. Write a Python program that uses a global variable within a function.
# 70. How do you find the length of a list? Example: [10, 20, 30, 40, 50].
# 71. How do you swap the first and last elements of a list? Example: [1, 2, 3] -> [3, 2, 1].
# 72. How do you clear a list in Python using different methods?
# 73. Write a program to find the second largest number in the list [90, 11, 20, 40, 100].
# 74. Write a Python program to illustrate arithmetic operations (+, -, *, /).
# 75. By using indexing, find the middle word in the string "This is my interview python question".
# 76. By using typecasting, convert data types: int to float, float to int, complex to int, int to complex, complex to float.
# 77. Find the output of the following input: ["HI", "hello", (1, 2, 3, 4), "a", "b"].
# 78. Extract country, state, city, and pincode from the string "INDTGHYD500082".
# 79. Given the dictionary item = {'mobile': 300, 'laptop': 400, 'tab': 200}, format and print the output as "ITEM: mobile, QUANTITY: 3, PRICE: 300, TOTAL_PRICE: 900".
# 80. Given the list cities = ['hyd', 'Chennai', 'Bangalore'], use if-else conditions to print the city names.
# 81. Convert the string "Welcome to Vaarahi" to all uppercase, all lowercase, and swapcase.
# 82. Find how many times 2 is repeated in the list [1, 2, 3, 4, 2, 5, 2, 5, 2, 6, 2, 6, 2].
# 83. Given the list [1, 2, 3, 4, 3], how can you clear the list and remove the last element?
# 84. Concatenate the tuple ('apple', 'mango', 'orange') with a '#' separator.
# 85. Sort the dictionary {'ravi': 10, 'rajnish': 9, 'sanjeev': 15, 'yash': 2, 'suraj': 32} by key.
# 86. Given a dictionary, find the sum of all items. Examples: {'a': 100, 'b': 200, 'c': 300} -> 600, {'x': 25, 'y': 18, 'z': 45} -> 88.
# 87. Given a dictionary, write a Python program to get the dictionary keys as a list. Examples: {1:'a', 2:'b', 3:'c'} -> [1, 2, 3], {'A':'ant', 'B': 'ball'} -> ['A', 'B'].
# 88. Given a list, write a Python program to swap the first and last elements of the list. Examples: [12, 35, 9, 56, 24] -> [24, 35, 9, 56, 12], [1, 2, 3] -> [3, 2, 1].
# 89. Given the list [1, 6, 3, 5, 3, 4], check if the number 3 exists.
# 90. Find the output of the input [2, 3, 5, 6, 7] to return an empty list.
# 91. Merge two dictionaries: dict1 = {'a': 10, 'b': 8}, dict2 = {'d': 6, 'c': 4}.
# 92. Concatenate a list and a string using the + operator and convert the result to a tuple.
# 93. Return a tuple after concatenating the list ['india', 'is'] and the string 'best'.
# 94. Write a Python program to find the index of a specific element in a list.
# 95. Write a Python program to print the following pattern using nested loops.
# *
# **
# ***
# ****
# *****
# 91. How would you read a large CSV file in chunks and process each chunk?
# 92. Write a function to calculate the moving average of a list.
# 93. Write a Python function to load data from Google Cloud Storage into a Pandas DataFrame.
# 94. Write a Python script to insert data into BigQuery.



#  TASK --- 10
'''List Exercises:
1) Print the second item in the fruits list.'''
fruits = ["apple", "banana", "cherry"]
# print(fruits[1])

'''2)Change the value from "apple" to "kiwi", in the fruits list.'''
# a = ["apple", "banana", "cherry"]
# a[0] = "kiwi"
# print(a)

'''3)Use the append method to add "orange" to the fruits list.'''
fruits = ["apple", "banana", "cherry"]
# fruits.append("orange")
# print(fruits)

# 4)Use the insert method to add "lemon" as the second item in the fruits list.
fruits = ["apple", "banana", "cherry"]
# print(fruits)
# fruits.insert(2,"lemon")
# print(fruits)

''' 5)Use the remove method to remove "banana" from the fruits list.
fruits = ["apple", "banana", "cherry"]'''
# fruits.remove('banana')
# print(fruits)


'''6)Use negative indexing to print the last item in the list.'''
# fruits = ["apple", "banana", "cherry"]
# print(fruits[::-1])

'''7)Use a range of indexes to print the third, fourth, and fifth item in the list.'''
# fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
# for i in range(3,6):
#     print(fruits[i])


'''8)Use the correct syntax to print the number of items in the list.'''
# fruits = ["apple", "banana", "cherry"]
# print(len(fruits))

'''9) List=[0,1,0,2,0,3] get output as [1,2,3,0,0,0]'''
list=[0,1,0,2,0,3] 
# List1.sort()
# print(List1)
# c = 0
# list1=[]
# list.sort()
# for i in list:
#     if i != 0:
#         list1.append(i)
#     else:
#         c = c+1

# for i in range(c):
#     list1.append(0)
# print(list1)



# list1=[]
# list.sort()
# for i in list:
#     if i != 0:
#         list1.append(i)

# for i in range(len(list) - len(list1)):
#     list1.append(0)
# print(list1)


'''10) Remove duplicates from list[1,2,3,4,1,2,3]'''
# my_list = [1, 2, 3, 4, 1, 2, 3]
# unique_list = list(set(my_list)) 
# print(unique_list)


'''11) A = ['ABC',[],'XYZ',[],'abc',[]] --> program to get output ['ABC','XYZ','abc']'''
# A = ['ABC',[],'XYZ',[],'abc',[]]
# for i in range(len(A)-1,-1,-1):
#     if A[i] == []:
#         del A[i]
# print(A)

'''12)x=[20,50,10,5,99,39,11,6] --> Ascending and Descending
don't use sort method, sort the above list
use the below concepts on List:
remove --> List 
append --> List
operator <
for loop 
if condition class'''

# x=[20,50,10,5,99,39,11,6]
# asscending = []
# while x:
#     min_value = x[0]
#     for num in x:
#         if num < min_value:




# 13) Python program to find largest number and second largest number in a list

# list1 = [10, 20, 20, 4, 45, 45, 45, 99, 99]

# 14) Count occurance of an element in the list ex:8

# lst = [8, 6, 8, 10, 8, 20, 10, 8, 8]

# 15) Concatenate two lists index-wise

# list1 = ["M", "na", "i", "Ke"]
# list2 = ["y", "me", "s", "lly"]


# Dictionary Exercise:
# 1)Use the get method to print the value of the "model" key of the car dictionary.
# car =	{
#   "brand": "Ford",
#   "model": "Mustang",
#   "year": 1964
# }

# 2)Change the "year" value from 1964 to 2020.
# car =	{
#   "brand": "Ford",
#   "model": "Mustang",
#   "year": 1964
# }

# 3)Add the key/value pair "color" : "red" to the car dictionary.
# car =	{
#   "brand": "Ford",
#   "model": "Mustang",
#   "year": 1964
# }

# 4)Use the pop method to remove "model" from the car dictionary.
# car =	{
#   "brand": "Ford",
#   "model": "Mustang",
#   "year": 1964
# }

# 5)Use the clear method to empty the car dictionary.
# car =	{
#   "brand": "Ford",
#   "model": "Mustang",
#   "year": 1964
# }
# 6) What is the output for the below
# dictt = {i : i+2 for i in range(10)}  
# 7)print sum of all values from a dict
# dict = {'a': 100, 'b': 200, 'c': 300}
# 8) dict={1:2,"adic":{"key":"val"},"role":"sse"} --> program to get output adic

# 9) Convert two lists into a dictionary

# keys = ['Ten', 'Twenty', 'Thirty']
# values = [10, 20, 30]

# Strings Exercise:
# 1)Write a program to find all occurrences of “USA” in a given string 
# ignoring the case.

# 2)Calculate the sum and average of the digits present in a string.
# str="hi156hello890"

# 3)Write a program to count occurrences of Characters within a string
# str1 = "Apple"

# 4)Reverse a given string -- using slicing
# Str1=Apple

# 5)Split a string on hyphens
# str1 = Emma-is-a-data-scientist

# 6)Count all chars, digits and symbols in a string
# str1 = "P@#yn26at^&i5ve"


#    TASK 10
# file = "sale_data_usa_06-01-2025.csv"
# date = 06-01-2025
# formate = csv
# a = file.split('_')
# print(a)
# c =  a[-1]
# print(c)
# d = c.split('.')
# print(d)
# date = d[0]
# formate = d[-1]
# print(date)
# print(formate)

# a = file.split('.')
# print(a)
# date = a[0][-10:]
# print("date is:",date)
# formate = a[1]
# print("formate:",formate)


# for i in range(5):
#     if i == 2:
#         continue
#     print(i)


# for i in range(5):
#     if i == 3:
#         pass
#     print(i)

# for i in range(10):
#     if i == 5:
#         break
#     print(i)


















