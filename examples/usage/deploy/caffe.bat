echo set master directory and solver_name, you need to replace them with your path and file name......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization
set solver_name=LogisticRegressionNet_solver

caffe train -solver %master_dir%/deploy/%solver_name%.prototxt