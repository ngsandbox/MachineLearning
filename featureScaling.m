function B = featureScaling(A)
  %B = [ones(size(A,1), 1) A];
  %A = [89 7981 96; 72 5184 74; 94 8836 87; 69 4761 78]
  B = A;
  for i=1:size(A,2),
    B(:,i) = (A(:,i) .- mean(A(:,i)))/(max(A(:,i)) - min(A(:,i)));
  end;