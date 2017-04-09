echon caffe train...

echo set master directory and solver_name, you need to replace them with your path and file name......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization
set solver_name=LogisticRegressionNet_solver

echo set variable...
set solver_file_path=%master_dir%/deploy/%solver_name%.prototxt
set log_file_path=%master_dir%/log/Log-%solver_name%.log

echo training process, and save training log.......
caffe train -solver %solver_file_path% 2>  %log_file_path%