% specify the eeglab folder path 
% this is git submodule
eeglabpath='./eeglab';
addpath(eeglabpath);
eeglab

optionfile = getenv('OPTION_FILE_NAME');
if isempty(optionfile)
    optionfile = 'options.mat';
end
load(optionfile);

datafile = getenv('DATA_FILE_NAME');
if isempty(datafile)
    datafile = 'test.mat';
end
load(datafile);

[EEG.icaweights, EEG.icasphere] = runica(tmpdata, 'lrate', 0.001,  g.options{:});
save('dist/result.mat', 'EEG', '-v7.3');