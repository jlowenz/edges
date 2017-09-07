function [ gt, dt ] = evalBoxes( gtbb, proposed_bb, iou_thresh, allow_multiple)
%evalBoxes - evaluate proposed bounding boxes wrt ground truth
%   Detailed explanation goes here
[gt,dt] = bbGt('evalRes', gtbb, proposed_bb, iou_thresh, allow_multiple);
end

