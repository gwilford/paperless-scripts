-- Set object name and creation date from document text
-- Created by Graeme Wilford 8/9/2012
-- Copyright (c) 2012, 2013. All rights reserved.

-- the perl script (takes document text on STDIN and source file path as 1st argument)
set PDFdate to "/Users/gwilford/paperless-scripts/PDF-date-stdin"
set MaxTextSize to 20000

tell application id "com.devon-technologies.thinkpro2"
	try
		set this_selection to the selection
		if this_selection is {} then error "Please select some contents."
		
		set number_of_steps to count of this_selection
		show progress indicator "Parsing documentsÉ" steps number_of_steps
		
		repeat with this_record in this_selection
			-- fake a 'continue' with an exit repeat of a 1-pass loop
			repeat 1 times
				set this_name to name of this_record as string
				step progress indicator this_name
				
				-- get text contents of PDF and pass up to MaxTextSize chars to parser
				set theText to plain text of this_record
				set theTextSize to length of theText
				-- skip to the next record if we have no text to parse 
				if theTextSize = 0 then exit repeat
				
				-- only pass MaxTextSize chars through "do shell script"
				if theTextSize > MaxTextSize then set theTextSize to MaxTextSize
				copy characters 1 through theTextSize of theText as string to theTrimmedText
				
				set thePath to path of this_record
				
				-- do the heavy lifting
				-- NB. shell can only handle ~260k command line	
				set theName to do shell script "echo " & quoted form of theTrimmedText & " | " & PDFdate & space & quoted form of thePath
				
				-- get the file timestamp
				tell application "System Events"
					set theDate to modification date of file thePath
				end tell
				
				-- set DB object name
				-- do this *after* checking file mod date
				-- as this command actually moves the file!
				set the name of this_record to theName
				
				-- set DB object creation date
				set the creation date of this_record to theDate
			end repeat
		end repeat
		hide progress indicator
		
	on error error_message number error_number
		hide progress indicator
		if the error_number is not -128 then display alert "DEVONthink Pro" message error_message as warning
	end try
end tell