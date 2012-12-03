import os

# Vocola function: Ruby.classify
def classify(class_name):
    return class_name.title().replace(" " , "")

# Vocola function: Ruby.to_method
def to_method(dictation):
  return dictation.replace(" ", "_")
