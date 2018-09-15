import numpy as np

def predict(W1, W2, X):
  z = np.multiply(X, W1)
  y = np.divide(1, (1 + np.exp(-z)))
  return np.multiply(y, W2)
