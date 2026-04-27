---
tags:
  - Machine Learning
  - Deep Learning
---

# TensorFlow

TensorFlow is an end-to-end open-source platform for machine learning, offering a comprehensive ecosystem of tools and libraries.

## Getting Started
Install TensorFlow using pip:
```bash
pip install tensorflow
```

Check if it's working:
```python
import tensorflow as tf

print(f"TensorFlow version: {tf.__version__}")

# Simple constant
hello = tf.constant('Hello, TensorFlow!')
print(hello.numpy())
```

Official Website: [tensorflow.org](https://www.tensorflow.org/)
