function model = loadModel(filename)
mdict = load(filename);
model = mdict.model;
end