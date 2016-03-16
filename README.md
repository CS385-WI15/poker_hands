# Recognizing Poker Hands with Neural Nets

Authors: James Barnes, Jinu Jacob, Devin McGinty 

## Purpose ##
The purpose of this project is to train a neural network to recognize poker hands accurately using Matlabs neural networks.

## Files ##
pokerNN.m - Matlab script that loads data from csv, trains neural network, runs net on test data, and outputs results to csv

sortHand.m, sortHands.m - sorts a hand so we do not have to worry about different permutations

output.csv - this is the output from the neural network when run on test data

formatTargets.py - For each row in output.csv this script changes the highest value to 1 and the rest of the values to 0. It outputs this data into output_adjusted.csv

output_adjusted.csv - the data adjusted by formatTargets.py

score.m - Matlab script that compares the neural networks output to the correct output and returns a score between 0 and 100

formatTargets.py - python script that takes a csv of hand values and converts it to Matlab readable data (e.g. takes a 9 and changes it to 0,0,0,0,0,0,0,0,0,1)

## Data 
The data used is from: http://archive.ics.uci.edu/ml/datasets/Poker+Hand
A card is represented as a tuple of suit and value. A hand is 5 tuples (10 numbers). The 11th number in the data is the hand value ranging from 0-9. For more information check out  http://archive.ics.uci.edu/ml/machine-learning-databases/poker/poker-hand.names

trainInput.csv - the training inputs for the neural network

trainTargetMatlab.csv - the training targets for the neural network which have been formatted for Matlab

testInput.csv - the testing inputs for the neural network

testTargetMatlab.csv - the correct test outputs to compare to the neural networks outputs

./NoSuits - contains training and test data where the suits of each card are removed. Only 5 numbers for each cards value are used for a hand.

./sorted - training inputs and targets sorted by hand values

./evenData - training inputs and targets that have been adjusted to have an equal number of hands for each value (approx. 400). (The original data set hand frequencies resemble actual hand frequencies)

## How to Run ##

Run pokerNN.m to train the neural network and test its accuracy on the testing data. To change the training data change the value of *input* and *target* in the pokerNN.m. If you are using a file that is not in the Matlab directory or is in a subdirectory make sure to include the entire path to the file. The test data can also be changed by changing the value of *testInput* in pokerNN.m.

After pokerNN.m has run and created output.csv, run formatTargets.py in the same directory containing the output.

Then run score.m to score the test results.



