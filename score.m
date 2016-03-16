% Use this to calculate test scores
outputA = csvread('output_adjusted.csv');
testTarget = csvread('testTargetMatlab.csv');

% Subtract the out put from the correct answers; the correct cells should
% have a value of zero
errors = gsubtract(testTarget,outputA);

% Count the number of zeroes in errors
correct = length(errors(errors==0));
total = 1000000 * 10;
score1 = correct/total;     % a variable cant have the same name as the script -_-

msg = sprintf( '%12.6f\n', score1 );
disp(msg);