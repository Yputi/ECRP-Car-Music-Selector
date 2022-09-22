# ECRP-Car-Music-Selector
AHK script to create a music selector for car speakers used in ECRP.

This repository includes the following:
1. The AHK script itself.
2. An example .txt file that serves as music library for the script.

# How to use
1. AHK is required for this anim selector to work! Make sure AHK has been installed and set up.
2. The Music library.txt file is purely a template and it is required to have in the same folder as the script file. It doesn't matter where you put those files in your PC, as long as they are in the same folder.
3. Run the .AHK file! Do this every time when you want to go use the script. (Or put a hyperlink to the .ahk file in the " %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup " folder if you want to automatically start the script when Windows starts)
4. You should now see the AutoHotKey Icon in your System Tray. This means the script is ready!

# Standard controls
Numpad 1: Open the "add song" menu
When you open this menu, anything you type will be searched on YouTube and the first URL that it will find will be used and added to the library. It will ask you what txt file to add it to.

Numpad 2: Open the search menu.

Numpad 3: Play the next song from your library.

# Add your songs to the library
There are 2 ways to add more songs.

Using "numpad 1":
When you press Numpad 1, anything you type will be searched on YouTube and the first URL that it will find will be used and added to the library. It will ask you what txt file to add it to.

Editing the .txt file:
To add a new song by editing the file, please make sure there is 1 empty line between already existing songs and there is no empty lines at the bottom of the file. Type in the name you want to give to the song and directly below your name, paste the URL to that song.
Make sure to save your changes to the file! Changes can be made while the script is running. No need to restart it.

Gif as example: https://i.gyazo.com/d02ec0b3fde20c967f872ffe44670e7e.gif

# Can I make multiple libraries?
Yes! The script will search through all txt files that are placed in the same folder. The name of the txt file does not matter. As long as there is always 1 empty line between your song name and URL as seen in the gif above.

# How to close the script?
The script will always run, even when GTA itself is running or not. Open your System Tray by clicking the icon in the bottom right, right click on the AHK icon and press "Exit".

# Can I change the controls?
Yes.
You can edit the .AHK file by right clicking on the file and use any program you like to open/edit it. Then you can scroll all the way to the top and replace "Numpad1", "Numpad2" or "Numpad3" with anything you like.
For any special- or combination keys, please head to this page: https://www.autohotkey.com/docs/KeyList.htm#keyboard
