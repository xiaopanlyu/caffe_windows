echo clear log......
echo set master directory, you need to replace it with your path......
set master_dir=D:/DL/caffe-master/examples/deep_learning_localization

set file_dir1=%master_dir%/log
set file_dir2=%master_dir%/model
set file_dir3=%master_dir%/training_graph

python %master_dir%/deploy/clear_dir.py %file_dir1%
python %master_dir%/deploy/clear_dir.py %file_dir2%
python %master_dir%/deploy/clear_dir.py %file_dir3%