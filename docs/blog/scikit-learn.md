---
tags:
  - Machine Learning
  - Library
  - Learning Path
---

# scikit-learn: Classical Machine Learning

Once you know NumPy, scikit-learn is your go-to tool for building traditional Machine Learning models like regression, classification, and clustering.

## 🎓 Learning Path

Follow this order to build robust ML pipelines:

### 1. Data Preprocessing
Learn how to clean and prepare your data for modeling.
- [Scaling & Normalizing](https://scikit-learn.org/stable/modules/preprocessing.html)
- [Encoding Categorical Features](https://scikit-learn.org/stable/modules/preprocessing.html#encoding-categorical-features)

### 2. Supervised Learning: Classification & Regression
Learn the core algorithms for predicting labels or values.
- [Linear Models](https://scikit-learn.org/stable/modules/linear_model.html)
- [Support Vector Machines (SVM)](https://scikit-learn.org/stable/modules/svm.html)
- [Decision Trees & Random Forests](https://scikit-learn.org/stable/modules/ensemble.html)

### 3. Unsupervised Learning
Discover patterns in data without pre-existing labels.
- [Clustering (K-Means)](https://scikit-learn.org/stable/modules/clustering.html)
- [Dimensionality Reduction (PCA)](https://scikit-learn.org/stable/modules/decomposition.html#pca)

### 4. Model Evaluation & Selection
Learn how to measure if your model is actually good.
- [Cross-Validation](https://scikit-learn.org/stable/modules/cross_validation.html)
- [Metrics (Precision, Recall, F1)](https://scikit-learn.org/stable/modules/model_evaluation.html)

### 5. Pipelines
Combine preprocessing and modeling into a single workflow.
- [Pipeline Guide](https://scikit-learn.org/stable/modules/compose.html#pipeline)

## 🚀 Quick Example
```python
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_iris

# 1. Load data
data = load_iris()
# 2. Split data
X_train, X_test, y_train, y_test = train_test_split(data.data, data.target)
# 3. Train model
clf = RandomForestClassifier().fit(X_train, y_train)
# 4. Evaluate
print(f"Accuracy: {clf.score(X_test, y_test)}")
```

Official Tutorials: [scikit-learn.org/stable/tutorial](https://scikit-learn.org/stable/tutorial/index.html)
