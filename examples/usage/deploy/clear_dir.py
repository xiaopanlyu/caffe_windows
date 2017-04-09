import os

import sys


def clear_dir(dirPath):
	fileList = os.listdir(dirPath)
	for fileName in fileList:
		os.remove(dirPath + "/" + fileName)


def print_help():
	print """This script mainly serves as the basis of your customizations.
Customization is a must.
You can copy, paste, edit them in whatever way you want.
Be warned that the fields in the training log may change in the future.
You had better check the data files and change the mapping from field name to
 field index in create_field_index before designing your own plots.
Usage:
    ./clear_dir.py file_dir ...
Notes:
    1. Must specifier a directory.
"""
	sys.exit()


if __name__ == '__main__':
	if len(sys.argv) < 1:
		print_help()
	else:
		files_dir = sys.argv[1]
		if not os.path.isdir(files_dir):
			print '%s is not a valid directory.' % files_dir
			print_help()
		clear_dir(files_dir)
