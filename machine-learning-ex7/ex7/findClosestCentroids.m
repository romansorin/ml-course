function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% Set m
m = size(X,1)

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:m
  
  % Set an array of zeros to hold distances for K values
  distances = zeros(1,K)
  
  
  for j = 1:K
    
    % Set the distances of the jth element that minimize the fn
    
    distances(1,j) = sqrt(sum(power((X(i,:)-centroids(j,:)),2)))
  endfor
  
  % Find minimum distance in distances array
  [_, distance] = min(distances)
  
  % Set closest centroid to the minimum distance
  idx(i, 1) = distance
endfor




% =============================================================

end

