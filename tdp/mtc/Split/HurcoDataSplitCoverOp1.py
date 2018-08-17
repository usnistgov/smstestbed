#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Clean/2-2-2017-Hurco04-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Cover-Op1-Hurco04-'	# output name prefix


count = 0

startLines = (99675,105515,112137,118342,124687,129380,131470,137752,144330,150502,156581,162800,169173,175414,181651,187885,194103,200318,206535,212756)
endLines   = (105500,112123,118341,124686,129378,131466,137751,143972,150501,156580,162671,169168,175413,181650,187884,194102,200317,206534,212755,218992)

tempFile = open( inFile, 'r' )
fileLines = tempFile.readlines()	# read all data lines
tempFile.close()

if len( startLines ) == len ( endLines ):
	for index in range( len( startLines ) ):
		count += 1
		print( str( count ) )
		if count < 10:
			outSplit = outFile + outName + '0' + str(count) +'of20.txt'
		else:
			outSplit = outFile + outName + str(count) +'of20.txt'
	
		splitFile = []
		for i in range( startLines[index], endLines[index]+1 ):
			splitFile.append( fileLines[i-1] )
		
		print('Saving: ' + outSplit)
		tempFile = open( outSplit, 'w' )
		tempFile.writelines( splitFile )	# write all split data lines
		tempFile.close()
else:
	print('Array for starting lines and array for ending lines are not the same length')