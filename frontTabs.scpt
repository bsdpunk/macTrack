on is_running(appName)
	tell application "System Events" to (name of processes) contains appName
end is_running
on exists (appName)
	set doesExist to false
	try
		do shell script "osascript -e 'exists application \"" & appName & "\"'"
		set doesExist to true
	end try
	
	return doesExist
end exists


set frontApp to path to frontmost application as text

if exists("iTerm2") then
        set isTerm to is_running("iTerm2")
        if isTerm then
	        tell application "iTerm"
		        tell current window
			--			do shell script "echo \"" & name & "\""
			set iName to name 
		end tell
	end tell
else
	set iName to ""
end if
else

	set iName to ""
end if

set isRunning to is_running("Safari")

if isRunning then
	tell application "Safari"
		tell front document
			-- do shell script "echo \"" & name & "\""
			
			set sName to name 
			--		tell front of document
			--		return name
		end tell
	end tell
else
	set sName to ""
end if

if exists("Google Chrome") then
        set isRunning to is_running("Google Chrome")
        if isRunning then
	        tell application "Google Chrome"
		        tell front window
			        tell active tab
				        set gName to title
			        end tell
		        end tell
	        end tell
        else
	        set gName to ""
        end if
else
        set gName to ""
end if 
on unixDate(datetime)
	set command to "date -j -f '%A, %B %e, %Y at %I:%M:%S %p' '" & datetime & "'"
	set command to command & " +%s"
	
	set theUnixDate to do shell script command
	return theUnixDate
end unixDate
set timeStamp to unixDate(current date)

do shell script "echo  \" " & frontApp & ","  & iName & "," & sName & ","  & gName & "," & timeStamp & "\""
