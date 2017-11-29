on is_running(appName)
	tell application "System Events" to (name of processes) contains appName
end is_running
on exists (appName)
	tell application "System Events"
		get exists application process appName
	end tell
end exists


if exists("iTerm2") then
set isTerm to is_running("iTerm2")
if isTerm then
	tell application "iTerm"
		tell current window
			--			do shell script "echo \"" & name & "\""
			set iName to "iTerm Tab Name: " & name
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
			
			set sName to " Safari Tab Name: " & name
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
				set gName to " Chrome Tab Name: " & title
				--		tell front of document
			end tell
			--		return name
		end tell
	end tell
else
	set gName to ""
end if
else

	set gName to ""
end if 
do shell script "echo  \" " & iName & " ||" & sName & " ||"  & gName & "\""

