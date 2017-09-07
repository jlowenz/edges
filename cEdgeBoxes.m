% compile with: mcc -W lib:libedgeboxes -T link:lib -d outlib 
%   cEdgeBoxes.m loadModel.m

function bbs = cEdgeBoxes(model, I, alpha, beta, minScore, maxBoxes, ...
    minBoxArea, kappa, eta, edgeMinMag, edgeMergeThr, clusterMinMag, ...
    gamma)
opt = struct();
opt.alpha = alpha;
opt.beta = beta;
opt.minScore = minScore;
opt.maxBoxes = maxBoxes;
opt.minBoxArea = minBoxArea; % 1000, 500
opt.kappa = kappa; % 1.5, 2.0
opt.eta = eta; % 1.0
opt.edgeMinMag = edgeMinMag; % 0.1;
opt.edgeMergeThr = edgeMergeThr; % 0.5;
opt.clusterMinMag = clusterMinMag; % 0.5;
opt.gamma = gamma; % 2.0;
bbs = edgeBoxes(I, model, opt);
end