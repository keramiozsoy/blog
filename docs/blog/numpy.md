---
tags:
  - Data Science
  - Library
  - Learning Path
---

# NumPy: The Foundation of Data Science

NumPy is the first step in your data science journey. It provides the high-performance multidimensional array objects that all other libraries (like pandas and scikit-learn) are built upon.

## 🎓 Learning Path

Follow these steps to master NumPy in the correct order:

### 1. Array Creation & Basics
Learn how to create arrays from lists and using built-in functions.
- [Creating Arrays](https://numpy.org/doc/stable/user/basics.creation.html)
- [Data Types](https://numpy.org/doc/stable/user/basics.types.html)

### 2. Indexing and Slicing
Learn how to access and modify specific elements or parts of an array.
- [Indexing Basics](https://numpy.org/doc/stable/user/basics.indexing.html)

### 3. Array Operations & Universal Functions
Master mathematical operations on arrays.
- [Universal Functions (ufunc)](https://numpy.org/doc/stable/user/basics.ufuncs.html)

### 4. Broadcasting
Understand how NumPy handles arrays of different shapes during arithmetic operations.
- [Broadcasting Guide](https://numpy.org/doc/stable/user/basics.broadcasting.html)

### 5. Linear Algebra & Statistics
Apply NumPy for advanced mathematical tasks.
- [Linear Algebra (numpy.linalg)](https://numpy.org/doc/stable/reference/routines.linalg.html)
- [Statistics](https://numpy.org/doc/stable/reference/routines.statistics.html)

## 🚀 Quick Example
```python
import numpy as np

# Step 1: Create a 2D array
data = np.array([[1, 2], [3, 4]])

# Step 2: Perform an operation (Broadcasting)
result = data * 10
print(result)
```

Official Documentation: [numpy.org/doc](https://numpy.org/doc/stable/)
