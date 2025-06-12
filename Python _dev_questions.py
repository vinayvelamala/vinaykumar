Here are the **answers** to the Python Developer interview questions tailored for someone with **1 year of experience**:

---

### 🔹 **Python Basics**

1. **What are Python’s key features?**

   * Interpreted, high-level, dynamically typed, object-oriented, open-source, large standard library, and supports multiple paradigms.

2. **Explain the difference between a list and a tuple.**

   * List: Mutable, defined using `[]`.
   * Tuple: Immutable, defined using `()`.

3. **What is the difference between `is` and `==` in Python?**

   * `is`: Checks identity (same memory location).
   * `==`: Checks equality of values.

4. **What are Python’s data types?**

   * `int`, `float`, `bool`, `str`, `list`, `tuple`, `set`, `dict`, `NoneType`.

5. **How is memory managed in Python?**

   * Managed by Python’s memory manager and garbage collector using reference counting and cyclic GC.

---

### 🔹 **Control Structures & Functions**

6. **How does a `for` loop differ from a `while` loop?**

   * `for`: Iterates over a sequence.
   * `while`: Loops until a condition is false.

7. \*\*What are \*args and **kwargs?**

   * `*args`: Non-keyword variable arguments.
   * `**kwargs`: Keyword variable arguments.

8. **What is the difference between `return` and `yield`?**

   * `return`: Ends a function and sends back a result.
   * `yield`: Pauses the function and saves state for next iteration (used in generators).

9. **Explain Python’s scope rules (LEGB Rule).**

   * Local → Enclosing → Global → Built-in.

10. **What is a lambda function?**

    * An anonymous function defined using `lambda`, e.g., `lambda x: x + 1`.

---

### 🔹 **Object-Oriented Programming (OOP)**

11. **Difference between class and instance variables?**

    * Class variable: Shared among all instances.
    * Instance variable: Unique to each object.

12. **What are Python’s OOP principles?**

    * Inheritance, Encapsulation, Abstraction, Polymorphism.

13. **What is a constructor in Python?**

    * `__init__()` method, runs when an object is created.

14. **What is method overriding?**

    * Redefining a method of the parent class in a child class.

15. **Explain the purpose of `super()`.**

    * Calls a method from the parent class.

---

### 🔹 **File Handling & Exceptions**

16. **How do you read and write to a file?**

    ```python
    with open("file.txt", "r") as f: content = f.read()
    with open("file.txt", "w") as f: f.write("Hello")
    ```

17. **Different modes in file handling?**

    * `'r'`, `'w'`, `'a'`, `'rb'`, `'wb'`, `'r+'`, `'w+'`.

18. **Explain exception handling.**

    ```python
    try:
        # code
    except Exception as e:
        # handle error
    ```

19. **Difference between `try...except` and `try...finally`?**

    * `finally` always executes, `except` only if error occurs.

20. **How do you create custom exceptions?**

    ```python
    class MyError(Exception):
        pass
    ```

---

### 🔹 **Popular Libraries**

21. **Have you worked with `requests`, `pandas`, `os`, or `json`?**

    * Yes. Used `requests` for APIs, `pandas` for dataframes, `os` for file system tasks, `json` for JSON handling.

22. **How do you parse JSON in Python?**

    ```python
    import json  
    data = json.loads(json_string)
    ```

23. **How do you handle APIs in Python?**

    ```python
    import requests  
    res = requests.get("https://api.com/data")
    ```

24. **Useful built-in modules?**

    * `os`, `sys`, `math`, `datetime`, `json`, `collections`.

25. **How do you manage virtual environments?**

    ```bash
    python -m venv env  
    source env/bin/activate  # Linux/Mac  
    env\Scripts\activate     # Windows
    ```

---

### 🔹 **Debugging & Testing**

26. **How do you debug a Python script?**

    * Use `print()`, `logging`, or IDE/debuggers like `pdb`.

27. **Have you written unit tests?**

    * Yes, using `unittest` or `pytest` framework.

28. **Testing a function interacting with an API?**

    * Use mocking (`unittest.mock`) to simulate API response.

29. **Purpose of `assert`?**

    * Checks conditions during debugging. Raises `AssertionError` if false.

30. **How do you handle logging?**

    ```python
    import logging  
    logging.basicConfig(level=logging.INFO)
    ```

---

### 🔹 **Real-World Scenarios**

31. **Describe a project where you used Python extensively.**

    * I developed Python-based ETL scripts on GCP to automate retail data workflows, optimize queries, and schedule Airflow DAGs.

32. **Optimizing a slow Python script?**

    * Profile code using `cProfile`, optimize loops, avoid redundant I/O, use generators, and better data structures.

33. **Monitor directory for new files?**

    * Use `os.listdir()` in a loop or `watchdog` module.

34. **Handle large data without running out of memory?**

    * Use generators, process data in chunks, and libraries like `pandas.read_csv(..., chunksize=1000)`.

35. **Writing clean, maintainable code?**

    * Follow PEP8, modular functions, docstrings, comments, consistent naming, and use version control.

---

### 🔹 **Advanced Concepts**

36. **What are decorators?**

    * Functions that modify other functions.

    ```python
    def decorator(func):  
        def wrapper():  
            print("Before")  
            func()  
            print("After")  
        return wrapper
    ```

37. **What is GIL?**

    * Global Interpreter Lock: prevents multiple threads from executing Python bytecode simultaneously.

38. **Difference: multiprocessing vs multithreading?**

    * Multiprocessing uses multiple CPUs, true parallelism.
    * Multithreading uses a single process, better for I/O-bound tasks.

39. **Python memory management?**

    * Automatic, using reference counting and garbage collection.

40. **What are context managers?**

    * Manage resources using `with` statement to ensure proper cleanup.

    ```python
    with open("file.txt") as f:
        data = f.read()
    ```

---

Let me know if you want these as a **PDF** or would like **mock interviews** with explanations.
