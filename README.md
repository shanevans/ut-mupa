# mupa.ahk 
Make Undertale Playable Again

**mupa** is an AutoHotKey script designed to implement better gamepad support in Undertale. The project has two goals:

1. Bind keys like Esc and F4 to the gamepad so the game can be played entirely without the keyboard.
2. Make it much easier to speed up gameplay by binding some debug features.

Presently the project is designed around a Logitech Cordless Rumblepad because that is the gamepad that I own. Other controllers in the same family should work too, but they are untested. These controllers are shaped similarly to Playstation controllers, so I will use both naming schemes.

mupa is intended for people who have the Steam version of Undertale. You'll have to edit the code to point to your UNDERTALE.exe if you have the standalone version, or else mupa won't autostart Undertale for you.

A few features require you to [enable debug mode](https://tcrf.net/Undertale/Debug_Mode), but the rest of the script operates without it.

The bindings are as follows:

* Button 1 "Square" ->   Backspace (Dash)
* Button 9 "Select" ->   F4 (Fullscreen)
* Button 10 "Start" ->   ESC (Exit)
* Button 7 "L2"     ->   Up+Down keys simultaneously (increases encounter rate)   
* Button 8 "R2"     ->   F (Doubles framerate/speed for the current room or battle)
* Button 2,3,4 "Cross,Circle, Triangle" -> Set to ZXC in-game so they're not used here.

# Installation

1. Download the .ahk or .exe file.
2. Edit the file if necessary, changing the controls to match your controller.
  * e.g. replacing "Joy1" with "Joy2"
3. Use a hex editor to enable debug mode in data.win (Optional).
4. Launch the script. Undertale should start automatically.
