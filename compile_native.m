% Compile to native library for use in C/C++ applications
mkdir('outlib')
mcc -W lib:libedgeboxes -T link:lib -d outlib cEdgesDetect.m cEdgeBoxes.m loadModel.m evalBoxes.m