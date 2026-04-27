---
tags:
  - AI
  - NLP
---

# NLP (Natural Language Processing)

Natural Language Processing (NLP) is a field of AI that enables computers to understand, interpret, and generate human language.

## Getting Started
A popular library for starting with NLP is **spaCy**. Install it with:
```bash
pip install spacy
python -m spacy download en_core_web_sm
```

Simple text processing example:
```python
import spacy

nlp = spacy.load("en_core_web_sm")
doc = nlp("Apple is looking at buying U.K. startup for $1 billion")

for token in doc:
    print(token.text, token.pos_)
```

Official Resource: [spaCy](https://spacy.io/)
