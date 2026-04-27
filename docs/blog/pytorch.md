---
tags:
  - Deep Learning
  - Library
---

# PyTorch

PyTorch is an open-source machine learning framework that accelerates the path from research prototyping to production deployment.

## Getting Started
Install PyTorch (command varies by OS, check the website):
```bash
pip install torch
```

Creating a simple tensor:
```python
import torch

# Create a tensor and perform an operation
x = torch.rand(5, 3)
y = torch.ones(5, 3)
result = x + y

print(result)
```

Official Website: [pytorch.org](https://pytorch.org/)
