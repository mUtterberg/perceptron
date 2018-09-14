function predictions = predict(W1,W2, X)

  % FIRST ATTEMPT: MANUALLY ITERATED THROUGH MATRICES.
  % COMPILES BUT DOES NOT PASS ALL TEST CASES PROVIDED.
  
  % predictions = 0;
  % k = rows(X)
  % n = columns(X)
  % m = columns(W1)
  % H = []
  % for j=1:m
  %   z = 0
  %   for i=1:k
  %     z += X(i,:) * W1(:,j)
  %   end
  %   y = 1 ./ (1 + exp(-z))
    % H = [H; y]
  %end
  %predictions = W2' * H
  
  
  % The ./ operator performs element-wise division,
  % so we do not need to iterate through rows of inputs and columns of weights.
  z = X*W1
  y = 1 ./ (1 + exp(-z))
  predictions = y*W2

endfunction
