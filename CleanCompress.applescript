-- Prompt the user to select files or folders
set selectedItems to choose file with prompt "Select files or folders to compress and clean:" with multiple selections allowed and showing package contents

-- Get the name of the first selected item to use as the base name for the ZIP file
set firstItem to item 1 of selectedItems
set itemInfo to info for firstItem
set itemName to name of itemInfo
set itemBaseName to do shell script "basename " & quoted form of POSIX path of firstItem & " ."

-- Determine the directory to save the ZIP file
set parentDir to do shell script "dirname " & quoted form of POSIX path of firstItem
set zipFilePath to parentDir & "/" & itemBaseName & ".zip"

-- Construct the zip command
set zipCommand to "/usr/bin/zip -r " & quoted form of zipFilePath

-- Add each selected item to the zip command
repeat with eachItem in selectedItems
    set itemPath to POSIX path of eachItem
    set zipCommand to zipCommand & " " & quoted form of itemPath
end repeat

-- Run the zip command
do shell script zipCommand

-- List the contents of the ZIP file
set zipContents to do shell script "/usr/bin/unzip -l " & quoted form of zipFilePath

-- Check if cleaning is needed
if zipContents contains "__MACOSX" or zipContents contains ".DS_Store" then
    -- Clean the ZIP file if necessary
    do shell script "/usr/bin/zip -d " & quoted form of zipFilePath & " '__MACOSX*' '.DS_Store' '*/.DS_Store'"
else
    display notification "No __MACOSX or .DS_Store files found to remove." with title "No Cleaning Needed"
end if

display notification "The files have been compressed and cleaned." with title "Compression Complete"
