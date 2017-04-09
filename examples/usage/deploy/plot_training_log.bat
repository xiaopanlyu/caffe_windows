echo Visualizing training curve......
echo set variable...

echo set master directory and solver_name, you need to replace them with your path and file name......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization
set solver_name=LogisticRegressionNet_solver

set py_path=%CAFFE_TOOSL%/plot_training_log.py
set training_graph_path=%master_dir%/training_graph
set log_src_path=%master_dir%/log
set log_file_name=Log-%solver_name%.log

echo do draw training graph...
for /l %%i in (0,1,7) do python %py_path% %%i %training_graph_path%/%log_file_name%_%%i.png  %log_src_path%/%log_file_name%

rem python %py_path% 0 %training_graph_path%/Test_accuracy-vs-Iters.png  %log_src_path%

rem python %py_path% 1 %training_graph_path%/Test_accuracy-vs-Seconds.png  %log_src_path%

rem python %py_path% 2 %training_graph_path%/Test_loss-vs-Iters.png  %log_src_path%

rem python %py_path% 3 %training_graph_path%/Test_loss-vs-Seconds.png  %log_src_path%

rem python %py_path% 4 %training_graph_path%/Train_learnning_rate-vs-Iters.png  %log_src_path%

rem python %py_path% 5 %training_graph_path%/Train_learning_rate-vs-Seconds.png  %log_src_path%

rem python %py_path% 6 %training_graph_path%/Train_loss-vs-Iters.png  %log_src_path%

rem python %py_path% 7 %training_graph_path%/Train_loss-vs-Seconds.png  %log_src_path%