paperless-scripts
=================

Scripts to aid going paperless

To test the date matching algorithm:
$ ./PDF-date-stdin -t < TestFile.txt 

To change the acceptable date range (from 30yrs ago to 30 days in the future), 
edit PDF-date-stdin and adjust $future or $past

For use with DEVONthink Pro:
Copy PDF-date-stdin to
	~/Library/Application Support/DEVONthink Pro 2/

Copy 'Set Creation Date from Contents.scpt' to somewhere in the DTP scripts folder
	~/Library/Application Support/DEVONthink Pro 2/Scripts/

To enable logging, to change the amount of text sent for parsing or the location
of the perl script, edit the AppleScript
