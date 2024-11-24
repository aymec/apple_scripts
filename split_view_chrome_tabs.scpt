try
	if application "Google Chrome" is running then
		tell application "Google Chrome" to activate
		tell application "System Events"
			tell process "Google Chrome"
				delay 0.5
				click menu item "Exit Full Screen" of menu "View" of menu bar 1
				click menu item "Move Tab to New Window" of menu "Tab" of menu bar 1
				delay 0.5
				click menu item "Tile Window to Right of Screen" of menu "Window" of menu bar 1
			end tell
		end tell
	end if
end try
