function [E, O] = cEdgesDetect( I, model, stride, sharpen, multiscale, nTreesEval, nThreads, nms)
%cEdgesDetect 
%   Detect edges in the given image using Structured Edges model
model.opts.stride = stride; % (2) stride for edges
model.opts.sharpen = sharpen; % (2) execute sharpening
model.opts.multiscale = multiscale; % (1) for max accuracy
model.opts.nTreesEval = nTreesEval; % (4) # of trees at location
model.opts.nThreads = nThreads; % max threads for eval
model.opts.nms = nms; % non-max suppression

[E, O, ~, ~] = edgesDetect(I, model);

end

