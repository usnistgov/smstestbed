#!/usr/bin/env python3
import os
import sys
import fileinput
import itertools

# Define input and output files
fileToClean = '/Users/tdh1/Desktop/MTCdata/2-17-2017-Hurco04.txt'	#input file
fileToSave = '/Users/tdh1/Desktop/MTCdata/2-17-2017-Hurco04-Clean.txt'	#output file
fileToTemp = '/Users/tdh1/Desktop/MTCdata/Temp.txt'	#temp file

tempFile = open( fileToClean, 'r' )
dirtyFile = tempFile.readlines()	# read all dirty data lines
tempFile.close()

for index in range( len( dirtyFile ) ):
    dirtyFile[index] = dirtyFile[index].lstrip()	# remove leading whitespace
    if dirtyFile[index][0:4] != '2017':
    	if dirtyFile[index-1][0:1] == '2' and dirtyFile[index][0:3] == '017':
    		dirtyFile[index-1] = dirtyFile[index-1].rstrip('\n')	# remove trailing \n in previous line if current line not a datastamp
    	elif dirtyFile[index-1][0:2] == '20' and dirtyFile[index][0:2] == '17':
    		dirtyFile[index-1] = dirtyFile[index-1].rstrip('\n')	# remove trailing \n in previous line if current line not a datastamp
    	elif dirtyFile[index-1][0:3] == '201' and dirtyFile[index][0:1] == '7':
    		dirtyFile[index-1] = dirtyFile[index-1].rstrip('\n')	# remove trailing \n in previous line if current line not a datastamp
    	else:
    		dirtyFile[index-1] = dirtyFile[index-1].rstrip('\n')	# remove trailing \n in previous line if current line not a datastamp
    #dirtyFile[index] = dirtyFile[index].replace('2017', '\n2017')

tempFile = open( fileToTemp, 'w' )
tempFile.writelines( dirtyFile )	# write all clean data lines
tempFile.close()

tempFile = open( fileToTemp, 'r' )
dirtyFile = tempFile.readlines()	# read all dirty data lines
tempFile.close()

for index in range( len( dirtyFile ) ):
	dirtyFile[index] = dirtyFile[index].replace('2017', '\n2017')

tempFile = open( fileToTemp, 'w' )
tempFile.writelines( dirtyFile )	# write all clean data lines
tempFile.close()

tempFile = open( fileToTemp, 'r' )
dirtyFile = tempFile.readlines()	# read all dirty data lines
tempFile.close()

cleanFile = []
for index in range( len( dirtyFile ) ):
	#cleanFile.append( dirtyFile[index].splitlines(True) )
	if dirtyFile[index] != '\n':
		cleanFile.append( dirtyFile[index] )

#cleanFile = list( itertools.chain(*cleanFile) )

tempFile = open( fileToSave, 'w' )
tempFile.writelines( cleanFile )	# write all clean data lines
tempFile.close()
