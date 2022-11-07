%%
clc;
clear;
close all;
array = csvread('B.csv');
colorArray = array(:,4);
%plot(colorArray);
%hold on

%Assume window size of 20
ws = 20;

%THIS SMOOTHENS THE GRAPH
% Calculating average of window size, looping through the entire CSV file
for i = 1: length(colorArray)-ws
    colorArrayAvg(i)= sum(colorArray(i:i+ws))/ws;
    %fprintf('%f \n', colorArrayAvg(i));
end
%plot(colorArrayAvg);
%hold on

%THIS FINDS CHANGE IN THE GRAPH, WILL RESULT IN PEAKS
% Calculating derivative of previously calculated averages
for i = 1:length(colorArrayAvg)-1
    colorDerivative(i) = abs(colorArrayAvg(i+1) - colorArrayAvg(i));
end

%plot(colorDerivative);
%hold on

%THIS SMOOTHENS THE PEAKS
%Smoothening derivative out, similar to what we did for colorArrayAvg
for i = 1: length(colorDerivative)-ws
    colorDerAvg(i)= sum(colorDerivative(i:i+ws))/ws;
    %fprintf('%f \n', colorArrayAvg(i));
end
%plot(colorDerAvg);
%hold off

%THIS STORES THE PEAKS AND THE RESPECTIVE INDICES
% Find the peaks of the derivative, minimum distance between peaks = 10,
% minimum height for peak = 1
[pks,locs] = findpeaks(colorDerAvg, 'MinPeakDistance',10, 'MinPeakHeight', 1);

g=sprintf("%d ", locs);
fprintf("%s\n", g);

% starting point of each section in the matrix that represents a number, gets updated in each loop
start = 0;
size = length(colorArray); % total length of matrix or number of rows in CSV
binary_str = ""; % string that will store the binary representation of data
index = 1;

%NOW HAVE TO DETERMINE THE WIDTH
% Loop through the array of peaks location using index





