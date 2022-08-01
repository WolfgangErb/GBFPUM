%% script: example.m

clear all; close all; format short e; 

% Load Minnesota graph
load data_graphminnesota.mat

% Load test function and sampling nodes
load data_f.mat

% Choose number of interpolation nodes and sampling data
N = 200;                        % Number of interpolation nodes
idxW = idxW(1:N); y = f(idxW);

% PUM parameters
JJ = 6;               % Number of clusters
RR = 8;               % Increasing parameter for subdomains

% Kernel parameters for interpolation (variational splines)
type = 'varspline';
alpha = [-2,0.001];

% Generate Partition of Unity

% 1a) Calculate J-center clustering of graph in JJ components
[idxcluster,idxQ] = GBF_Jcenters_greedy(G.A,JJ,idxW,idxW(1));

% 1b) Augment the clusters to subdomains for PU
[idxdomain] = GBF_domainaugment(G.edges,idxcluster,RR);

% 1c) Generate PU out of the single domains
[phi,idxWdomain,ydomain] = GBF_genPUM(G.edges,idxcluster,idxdomain,idxW,y);

% 2)3)4) Use PU to calculate global kernel-PUM interpolant
s = GBF_RLSGBFPUM(G.L,idxdomain,phi,idxWdomain,ydomain,type,alpha,0);

% Compute errors
rmaerr = norm(s(:)-f,inf)/norm(f,inf);            % relative max absolute error
rrmserr = norm((s(:)-f))/max(f)/sqrt(length(f));  % relative rms error

% Print errors
fprintf('no. points\t rmaerr \t rrmserr \n')
fprintf('\t%4d\t %.3e\t %.3e\n ',N,rmaerr,rrmserr);