
echo set master directory and solver_name, you need to replace them with your path and file name......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization
set solver_name=LogisticRegressionNet_solver

echo set train variable......
set solver_file_path=%master_dir%/deploy/%solver_name%.prototxt
set log_file_path=%master_dir%/log
set log_file_name=Log-%solver_name%-1.log

echo set plot variable......
set py_path=%CAFFE_TOOLS%/plot_training_log.py
set training_graph_path=%master_dir%/training_graph

echo set clear variable......
set file_dir1=%master_dir%/log
set file_dir2=%master_dir%/model
set file_dir3=%master_dir%/training_graph

echo clear log, model, training_graph......
python %master_dir%/deploy/clear_dir.py %file_dir1%
python %master_dir%/deploy/clear_dir.py %file_dir2%
python %master_dir%/deploy/clear_dir.py %file_dir3%

echo caffe train......
echo training process, and save training log......
caffe train -solver %solver_file_path% 2>  %log_file_path%/%log_file_name%

echo Visualizing training curve......
for /l %%i in (0,1,7) do python %py_path% %%i %training_graph_path%/%log_file_name%_%%i.png  %log_file_path%/%log_file_name%