::For Caffe Windows CPU configuration
 
 ::set caffe windows home
 set cur_dir=%~dp0
 set CAFFE_WINDOWS_HOME=%cur_dir%
 
::create system variable "CAFFE_WINDOWS_HOME"
wmic ENVIRONMENT create name="CAFFE_WINDOWS_HOME",username="<system>",VariableValue="%CAFFE_WINDOWS_HOME%"
::modify the system variable "CAFFE_WINDOWS_HOME" when it exist
wmic ENVIRONMENT where "name='CAFFE_WINDOWS_HOME' and username='<system>'" set VariableValue="%CAFFE_WINDOWS_HOME%"
::apply immediately
set "CAFFE_WINDOWS_HOME=%CAFFE_WINDOWS_HOME%"

::create system variable "CAFFE_TOOLS"
wmic ENVIRONMENT create name="CAFFE_TOOLS",username="<system>",VariableValue="%CAFFE_WINDOWS_HOME%tools"
::modify the system variable "CAFFE_WINDOWS_HOME" when it exist
wmic ENVIRONMENT where "name='CAFFE_TOOLS' and username='<system>'" set VariableValue="%CAFFE_WINDOWS_HOME%tools"
::apply immediately
set "CAFFE_TOOLS=%CAFFE_WINDOWS_HOME%tools"

::config caffe windows cpu version, include libcaffe cpu and  pycaffe cpu
wmic ENVIRONMENT create name="path",username="<system>",VariableValue="%CAFFE_WINDOWS_HOME%libcaffe\cpu;%CAFFE_WINDOWS_HOME%pycaffe\cpu;%path%"
::modify the system variable "CAFFE_WINDOWS_HOME" when it exist
wmic ENVIRONMENT where "name='path' and username='<system>'" set VariableValue="%CAFFE_WINDOWS_HOME%libcaffe\cpu;%CAFFE_WINDOWS_HOME%pycaffe\cpu;%path%"
::apply immediately
set "path=%CAFFE_WINDOWS_HOME%libcaffe\cpu;%CAFFE_WINDOWS_HOME%pycaffe\cpu;%path%"


 