% Get training data
input = csvread('trainingInput.csv');
target = csvread('trainTargetMatlab.csv');

% Sort hands
input = sortHands(input);

% Transpose matrices
inputT = transpose(input);
targetT = transpose(target);


net = feedforwardnet([50,25]);               % feed forward net with 50 hidden neurons(1 layer)
net.trainFcn = 'trainrp'                % training function = resilient back-propogation
net.layers{1}.transferFcn = 'tansig';   % hidden layer transfer function = tansig
net.layers{2}.transferFcn = 'tansig';   % output layer transfer function = tansig
net.trainParam.epochs = 5000;           % max epochs = 5000
net.trainParam.min_grad = 1e-10;        % Minimum gradient = 1e-10
net.trainParam.max_fail = 1000;         % Max validation checks = 1000
net.trainParam.lr = 0.2;               % learning rate = 0.02

% Start training
[net,tr] = train(net, inputT, targetT)

% Uncomment below to retrain with different random weight
% net = init(net)
% [net,tr] = train(net, inputT, targetT);

% Load test data
testInput = csvread('testInput.csv');
testInputT = transpose(testInput);

% Activate net on test data
output = net(testInputT);

% Write output to a file
outputT = transpose(output);
csvwrite('output.csv', outputT);

