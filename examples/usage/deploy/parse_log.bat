
echo set master directory and solver_name, you need to replace them with your path and file name......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization
set solver_name=LogisticRegressionNet_solver

echo parse log......
python %CAFFE_TOOLS%/parse_log.py %master_dir%/log/Log-%solver_name%.log  %master_dir%/log/