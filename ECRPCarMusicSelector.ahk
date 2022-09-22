#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
global URL
global url
global Linenumber
global fil
global query

Numpad1::
SongAdd()
return

Numpad2::
SongSelect()
return

Numpad3::
SongNext()
return

SongSelect(){
InputBox, searchstring, Search

	Loop, %A_ScriptDir%\*.txt, 1
	{
		Loop, Read, %A_ScriptDir%\%A_LoopFileName% , 1
		{
			i := A_Index
			IfInString, A_LoopReadLine, %searchstring%
			{
				Linenumber := A_Index
				fil = %A_loopFIleName%
				Loop, 2
				{
					FileReadLine, Line, %fil%, % i
					Result .= Line "`n"
					i++
				}
				Break
			}
			
		}
	
		
	}

URL := Linenumber +1

FileReadLine, OutputURL, %fil%, URL

send, t/CarURL %OutputURL%{enter}
}

SongNext(){
Linenumber := URL +3
URL := Linenumber

FileReadLine, OutputURL2, %fil%, URL
send, t/CarURL %OutputURL2%{enter}
}


SongAdd(){
	SoundBeep, 440, 100
	SoundBeep, 440, 100
	SearchYT =
	InputBox, SearchYT, Add Song to Library
	query := SearchYT
	url := first_youtube_result( query )
	SearchYT := url
AddSongOptions()
}

first_youtube_result( query ){
	StringReplace, query, query, %A_Space%, +, All
	url := "https://www.youtube.com/results?search_query=" query
	r := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	r.Open("GET", url, true)
	r.Send()
	r.WaitForResponse()
	If RegExMatch( r.ResponseText, "/watch\?v=.{11}", match )
		url := "https://www.youtube.com" match
	return url
}

AddSongOptions(){
	MsgBox, 3, ,Would you like to use this name?`n`nSong name = %query%`nURL = %url%
ifMsgBox, Yes
    FileSelectFile, SelectedFile, 3, , Open a file, Text Documents (*.txt; *.doc)
	FileAppend,`n%query%`n%url%`n,%SelectedFile%
ifMsgBox, No
	ChangeSongNameMenu()
ifMsgBox, Cancel
	return
}

ChangeSongNameMenu(){
MsgBox, 4, ,Would you like to change the name of the following song?`n`nSong name = %query%`nURL = %url%
		ifMsgBox, Yes
		ChangeSongName()
		ifMsgBox, No
		return
}

ChangeSongName(){
InputBox, query, Change name
			FileSelectFile, SelectedFile, 3, , Open a file, Text Documents (*.txt; *.doc)
			FileAppend,`n%query%`n%url%`n,%SelectedFile%
}