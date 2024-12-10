on openWithChrome(arg)
	do shell script quoted form of "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" & " --profile-email='" & profileEmail & "' " & arg
end openWithChrome

on openWithVivaldi(arg)
	do shell script "~/Applications/Vivaldi.app/Contents/MacOS/Vivaldi --profile-directory='" & vivaldiProfile & "' " & arg
end openWithVivaldi

on openX(arg)
	openWithVivaldi(arg)
end openX

on open location anURL
	openX(quoted form of anURL)
end open location

on open aDocument
	openX(quoted form of POSIX path of aDocument)
end open
