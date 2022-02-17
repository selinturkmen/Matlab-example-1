% FIRST NAME, LAST NAME = Selin Türkmen

clear all
close all

%% Question 1
%% Question 1 (a)

% 1) A = (3x3), B = (3x2), C = (2x3), x = (3x1)

% 2)
A = [ 4, 2, -2; 1 , 9 ,-1; 7, 0, -3]
B = [ 1, -1; 3 , 0; -5, 6]
C = [ 9, -2, 0; 4 , 2 ,-6]
x = [ 8;-8 ;11]

% 3)
%a = diag(A) = [4;9;-3]
%b = diag(B) = [1;0]
%c= diag(C) = [9;2]

% 4)
%d = size(B) = [3,2]
%e = any(B) = (1x2)[1,1]
%f = all(B) = (1x2)[1,0]
%N = length(x) = 3
%g = min(B) = [-5,-1]

% 5)
I = eye(4)
Z = zeros(3,2)
T = ones(100,1)*2
E = []

% 6)
z = [-1.5:0.1:4.3]
w = linspace(-1.5,4.3,59)

%% Question 1 (b)
Y = [1,2,3;4,5,6;7,8,9]

%1)
Y(:,[2,3]) = Y(:,[3,2])

%2)
Y = [Y zeros(3,1)]

%3)
Y = [Y(1,:);ones(1,4);Y(2:3,:)]

%4)
Y(:,1) = []


%% Question 2
%% Question 2 (a)
x = linspace(0,2*pi,36);
A = reshape(x,[6,6])
y = cos(2*x) + exp(3*x);

% a)
y = sort(y)

% b)
y = reshape(y,[6,6])

% c)
largest_element = max(max(y));
smallest_element = min(min(y));
disp('The difference between the largest and smallest element:')
largest_element - smallest_element

index_largest = find(max(y)==largest_element);
index_smallest = find(min(y)==smallest_element);
disp('The difference between the column indices of largest and smallest element:')
index_largest - index_smallest

% d)
z = [1;1;1;1;1;1];
B = A*z

% e)
sum(A,'all')^3

%% Question 3

cost_per_flight_hour=[12,10,14,8]
total_flight_hour=[22,30,24,32]
carried_no_passenger=[1200,2000,1400,1800]

%(a)
cost_weekly=cost_per_flight_hour.*total_flight_hour

%(b)
cost_total=sum(cost_weekly)

%(c)
weekly_carried_passengers=sum(carried_no_passenger)

%(d)
cost_average_for_one=cost_weekly./carried_no_passenger

%(e)
flight_hour_average_for_one=total_flight_hour./carried_no_passenger

%(f)
disp('The most efficient cost:')
min_cost= min(cost_average_for_one)

disp('The most efficient route:')
most_efficient= find(cost_average_for_one == min_cost)

disp('The least efficient cost:')
max_cost= max(cost_average_for_one)

disp('The least efficient route:')
least_efficient=find(cost_average_for_one == max_cost)

%% HW END