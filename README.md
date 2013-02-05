paperless-scripts
=================

Scripts to aid going paperless...

<<<<<<< HEAD
PDF-date-stdin searches text presented on STDIN for a well-formed date (many styles are matched, see the TestFile for details). If no date is found, the script prints "no date" on STDOUT. Otherwise the first date found is converted to YYYY-MM-DD format (or YYYY-MM if no day specifed in date) and printed to STDOUT. In addition, if a source file is provided as an agument to the script, the modification and creation dates of the file are changed to reflect the date found.

The script takes three command line options, -t, -c and -L \<logfile\>;
- -t is used to exercise and test the date matching algorithm against a test file.
- -c should be specified if the text presented on STDIN has CR (carriage return) instead of LF (line feed) between lines. 
- -L \<logfile\> can be used to append date matching details to a log file for debugging purposes

This script has been designed for use within DEVONthink Pro although it will work fine on it's own or in other application workflows. To use within DEVONthink, there is an accompanying AppleScript that takes the selected records and passes up to the first 2000 chars of each record text to the script. The resulting output (date or "no date") is used to re-name the DTP record, change it's internal creation date and to update the modification time of the source file.

Originally designed to pull OCR'd text out of PDF files, the script no-longer works directly with the file contents but will match dates from any presented english ASCII text. It doesn't need to have originated from OCR software or come from a PDF document. On the OS X commandline, it's possible to pull content out of non-ASCII text files using Spotlight search data (check out the mdimport command with option -d2).

NB. The script does not currently match US-style MM/DD/YYYY date strings or non-english dates.

To test the date matching algorithm:<br>
<code>$ ./PDF-date-stdin -t < TestFile.txt</code>

To change the acceptable date range (from 30yrs ago to 30 days in the future), 
edit PDF-date-stdin and adjust $future or $past

For use with DEVONthink Pro:
- Copy the perl script, PDF-date-stdin to ~/Library/Application Support/DEVONthink Pro 2/ <code>$ cp PDF-date-stdin ~/Library/Application\ Support/DEVONthink\ Pro\ 2/</code>
- Copy the AppleScript, 'Set Creation Date from Contents.scpt' to somewhere below the DTP scripts folder, ~/Library/Application Support/DEVONthink Pro 2/Scripts/ <code>$ cp Set\ Creation\ Date\ from\ Contents.scpt ~/Library/Application\ Support/DEVONthink\ Pro\ 2/Scripts/Rename/</code>
- Refresh the DTP scripts menu or restart DTP

You'll need to edit the AppleScript to enable logging, to change the amount of text sent for parsing or the location
of the perl script.
=======
**Don't use this branch - use the No_CPAN_modules branch!**

>>>>>>> 0f27b3cd17f1f65fb07fa021589a465fa05538ef
