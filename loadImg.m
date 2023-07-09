function [testSet,testNames,trainSet,trainNames] = loadImg(names)
    %load train dataset
    trainNames = strings(1, length(names) * 2);
    for i = 1:length(names)
        trainNames(i) = names(i) + "1";
        trainNames(i + length(names)) = names(i) + "2";
    end
    trainSet = zeros(length(trainNames), 64*64);
    for i = 1:length(trainNames)
        trainSet(i,:) = double(reshape(rgb2gray(imread("images/"+trainNames(i) + ".jpg")), [64*64, 1]));
    end
    
    %load test dataset
    testNames = strings(1, length(names) * 2);
    for i = 1:length(names)
        testNames(i) = names(i) + "3";
        testNames(i + length(names)) = names(i) + "4";
    end
    testSet = zeros(length(testNames), 64*64);
    for i = 1:length(testNames)
        testSet(i,:) = double(reshape(rgb2gray(imread("images/"+testNames(i) + ".jpg")), [64*64, 1]));
    end
end