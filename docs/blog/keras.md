---
tags:
  - Deep Learning
  - Library
---

# Keras

Keras is an API designed for human beings, not machines, providing a Python interface for artificial neural networks.

## Getting Started
Keras is now part of TensorFlow. Install it with:
```bash
pip install tensorflow
```

Creating a simple neural network:
```python
from tensorflow import keras
from tensorflow.keras import layers

model = keras.Sequential([
    layers.Dense(64, activation='relu', input_shape=(32,)),
    layers.Dense(10, activation='softmax')
])

model.compile(optimizer='adam', loss='categorical_crossentropy')
print("Model built successfully!")
```

Official Website: [keras.io](https://keras.io/)
