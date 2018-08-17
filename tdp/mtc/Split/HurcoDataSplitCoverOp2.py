#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
inFile = '/Users/tdh1/Desktop/MTCdata/Clean/2-2-2017-Hurco04-Clean.txt'	#input file
outFile = '/Users/tdh1/Desktop/MTCdata/Split/'	#output location
outName = 'Cover-Op2-Hurco04-'	# output name prefix


count = 0

startLines = (233550,238871,243712,248559,253408,259168,264718,270282,275811,281352,287032,292600,298125,303662,309182,314737,320273,325875,331416,336942)
endLines   = (238870,243711,248558,253405,259167,264717,270281,275809,281350,287031,292598,298124,303661,309181,314736,320272,325874,331415,336941,342483)

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