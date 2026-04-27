---
tags:
  - Deep Learning
  - Library
  - Learning Path
---

# Keras: Deep Learning for Humans

Keras is the easiest way to start with Deep Learning. It provides a high-level API that works on top of TensorFlow.

## 🎓 Learning Path

Step-by-step guide to building neural networks:

### 1. The Sequential Model
The simplest way to build a model by stacking layers.
- [Sequential Model Guide](https://keras.io/guides/sequential_model/)

### 2. Core Layers
Understand the building blocks like Dense, Dropout, and Flatten.
- [Layer API](https://keras.io/api/layers/)

### 3. Compiling and Training
Learn about optimizers, loss functions, and metrics.
- [Training & Evaluation](https://keras.io/guides/training_with_built_in_methods/)

### 4. The Functional API
For more complex models with multiple inputs or outputs.
- [Functional API Guide](https://keras.io/guides/functional_api/)

### 5. Transfer Learning
Using pre-trained models for your own tasks.
- [Transfer Learning & Fine-Tuning](https://keras.io/guides/transfer_learning/)

## 🚀 Quick Example
```python
import tensorflow as tf
from tensorflow.keras import layers

# Build a simple model
model = tf.keras.Sequential([
    layers.Dense(64, activation='relu'),
    layers.Dense(10, activation='softmax')
])

model.compile(optimizer='adam', loss='sparse_categorical_crossentropy')
print("Model ready!")
```

Official Guides: [keras.io/guides](https://keras.io/guides/)
