function y = NEARNESS(centroids, avgArea)
[m,n] = size(centroids);
totDist = 0;
for i = 1: m-1
    for j = i+1:m
        totDist = totDist + sqrt((abs(centroids(i,1)-centroids(j,1)))^2 + (abs(centroids(i,2)-centroids(j,2)))^2);
    end
end
avgRadius = sqrt(avgArea/pi); % find the avg radius of each blob
avgDist = totDist/m;          % average distance between two blobs
if avgDist < 3*avgRadius
    y = 0;
else
    y = 1;
end