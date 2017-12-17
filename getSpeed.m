% learned usage of kalman from in.mathworks.com/help/vision/examples/motion-based-multiple-object-tracking.html
function s = getSpeed(vehicles, frameRate)

% calculate speed (not normalised with actual speed in m/s)   
displacement = 0;
for i = 1: length(vehicles)
    p1 = vehicles(i).centroid;
    p2 = vehicles(i).oldCentroid;
    displacement = displacement + sqrt((p1(1)-p2(1))^2 + (p1(2)-p2(2))^2);
end
s = (displacement/length(vehicles))*frameRate; % avg displacement*frame rate

