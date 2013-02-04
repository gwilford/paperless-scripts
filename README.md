paperless-scripts
=================

Scripts to aid going paperless...

PDF-date-stdin searches text presented on STDIN for a well-formed date (many styles are matched, see the TestFile for details). If no date is found, the script prints "no date" on STDOUT. Otherwise the first date found is converetd to YYYY-MM-DD format (or YYYY-MM if no day specifed in date) and printed to STDOUT. In addition, if a source file is provided as an agument to the script, the modification and creation dates of the file are changed to reflect the date found.

The script takes three command line options, -t, -c and -L \<logfile\>;
- -t is used to exercise and test the date matching algorithm against a test file.
- -c should be specified if the text presented on STDIN has CR (carriage return) instead of LF (line feed) between lines. 
- -L \<logfile\> can be used to append date matching details to a log file for debugging purposes

This script has been designed for use within DEVONthink Pro although it will work fine on it's own or in other application workflows. To use within DEVONthink, there is an accompanying ApppleScript that takes the selected records and passes up to the first 2000 chars of each record text to the script. The resulting output (date or "no date") is used to re-name the DTP record, change it's internal creation date and to update the modification time of the source file.

Originally designed to re-name OCR'd PDF files, the script will match dates from any presented english ASCII text. It doesn't need to have originated from OCR software or come from a PDF document. The script does not currently match US-style MM/DD/YYYY date strings. 

To test the date matching algorithm:<br>
<code>$ ./PDF-date-stdin -t < TestFile.txt</code>

To change the acceptable date range (from 30yrs ago to 30 days in the future), 
edit PDF-date-stdin and adjust $future or $past

For use with DEVONthink Pro:
- Copy the perl script, PDF-date-stdin to ~/Library/Application Support/DEVONthink Pro 2/ <code>$ cp PDF-date-stdin ~/Library/Application\ Support/DEVONthink\ Pro\ 2/</code>
- Copy the AppleScript, 'Set Creation Date from Contents.scpt' to somewhere below the DTP scripts folder, ~/Library/Application Support/DEVONthink Pro 2/Scripts/ <code>$ cp Set\ Creation\ Date\ from\ Contents.scpt ~/Library/Application\ Support/DEVONthink\ Pro\ 2/Scripts/</code>

You'll need to edit the AppleScript to enable logging, to change the amount of text sent for parsing or the location
of the perl script.
