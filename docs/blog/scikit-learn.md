---
tags:
  - Machine Learning
  - Library
---

# scikit-learn

scikit-learn is a simple and efficient tool for predictive data analysis, built on NumPy, SciPy, and matplotlib.

## Getting Started
Install scikit-learn using pip:
```bash
pip install scikit-learn
```

A common use case is training a simple classifier:
```python
from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

# Load data
iris = datasets.load_iris()
X, y = iris.data, iris.target

# Split and train
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)
clf = RandomForestClassifier()
clf.fit(X_train, y_train)

print(f"Model accuracy: {clf.score(X_test, y_test)}")
```

Official Website: [scikit-learn.org](https://scikit-learn.org/)
