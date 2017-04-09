# How to install Windows Caffe?

## Libraries
- libcaffe: It's a core library. Included caffe train, test, convert, classification, etc.
- pycaffe:  It's a python API and included some extra tools such as draw net, etc.
- tools: It's main included some extra tools. And it can be extended by users themselves. For example, here we add a visualization training log function that will help you to observe the train or test loss and accuracy the change process clearly.

## Dependence
- This caffe is built with Visual Studio 2013 which can be used in CPU or GPU mode. For GPU mode, it depend on CUDA 7.5.  For python API, it used python 2.7.

## Installation
-  It's convenient enough to install the Windows Caffe. Just copy Caffe files into your software directory.

## Configuration
-  Set a root system environment path. eg.CAFFE_HOME=C:\Caffe
	- Add libcaffe path to system path. i.e. %CAFFE_HOME%\libcaffe;
	- Add a new pycaffe system variable. i.e. CAFFE_PYTHON=%CAFFE_HOME%\pycaffe;
	- Add a new tools system variable. i.e. CAFFE_TOOLS=%CAFFE_HOME%\tools;
- Test  whether them work correctly.

## Attention 
- The system environment path cannot included the blank because of the python bug. Typically, the Windows system program path is not allowed for your configuration path. i.e. "C:\Program Files" is shouldn't be used.
- For convenience, we write a bat script so that the system environment path configuration become very simply. But you should confirm that you didn't add both cpu and gpu path to the system variable 'path'. The bat script didn't check this. It will be check by yourself.
