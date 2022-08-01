function [s,c,Kf] = GBF_RLSGBF(bf,idxW,y,lambda)

% File:    GBF_RLSGBF.m
%
% Goal:    Computes the GBF regularized least squares solution s,
%          minimizing the functional
%                  1/K * sum_i (s(i) - y(i)) + lambda * |s|_K,
%          based on K sampling nodes in idxW.
%
% Use:     [s,c,Kf] = GBF_RLSGBF(bf,idxW,y,lambda)
%
% Input:
%          bf     = NxK matrix - the K graph basis vectors
%          idxW   = K vector - the indices of the K sampling nodes
%          y      = K vector - the sampling values at the K nodes
%          lambda = regularization parameter for RLS
%
% Output:
%          s     = N-vector - the GBF-RLS solution
%          c     = K-vector - the coefficients in the basis expansion
%          Kf    = interpolation matrix of the kernel

[~,K] = size(bf);

% Initialize variables
Kf = zeros(K,K);

% Generate matrix for the interpolation
for i=1:K
    Kf(i,:) = bf(idxW(i),:);
end

Kfreg = Kf + eye(K)*lambda*K;
c  = Kfreg\y;
s  = bf*c; 

return