Created using xDelta3 Cross GUI 1.4.2 by dan0v, https://github.com/dan0v/xdelta3-cross-gui

PS2 Batman Begins (Europe) (En,Fr,De,Es,It,Nl,Sv) SLES_533.87;1 v2 PATCH PCSX2-PS3-PS4
by felixthecat1970

- Update codes from v1 and converted in patch file for ISO dump
- Unlock framerate to 60fps 60hz (from PAL 25fps 50hz), possible performance hit in consoles and fix video double-speed problem
- Image display correction and enable sharper image (less blurry image)
- Autoenable subtitles, widescreen, camera axis stick to modern type (can be turn off in game options)
- No logos and skip movies with any button 
- Des-PAL-letized (unlock NTSC native video display game code) *same 3d engine speed as USA counterpart
- Changed PAL 25fps video files for USA 30fps counterparts correct display
- Smaller ISO size after patch (cleanup repeated video files)
- Add partial progressive scan mode for better image quality

Build patch recomended for PCSX2-PS3-PS4 and ps2 with progressive scan setup (ps2 untested but will show big black on sides)

Main downlaods are bigger not possible here in github:

Download patch recomended
https://www.mediafire.com/file/fvdsygzgae3hxrj/ps2-Batman_Begins_%2528Europe%2529-patchPCSX2.7z/file

Version withow progressive scan codes
https://www.mediafire.com/file/xbotgj4pa5bqz75/Batman_Begins_%2528Europe%2529_%2528En%252CFr%252CDe%252CEs%252CIt%252CNl%252CSv%2529-patch.7z/file

Version in PAL 50fps
Batman Begins (Europe)-patchPAL50fpsV2.7z


How to patch:
(for fast sha1 file hash use 7zip compressor tool > click right mouse on file > 7zip > crc SHA > SHA-1)
Tool: https://www.7-zip.org/
Verify your iso game dump file hash:
sha1: 3380b57d641f3dd6669b7f3944b11f8fe930c330

Rename your ISO dump to:
Batman Begins (Europe) (En,Fr,De,Es,It,Nl,Sv)

Windows:
1. Copy your original files into the 'original' folder with their original file names
2. Double click the 2.Apply Patch-Windows.bat file and patching will begin
3. Once patching is complete you will find your newly patched files in the 'output' folder
4. Enjoy

Linux:
1. Copy your original files into the 'original' folder with their original file names
2. In terminal, type:` sh "2.Apply Patch-Linux.sh" `. Patching should start automatically
2. Alternatively, if you're using a desktop environment, double click 2.Apply Patch-Linux.sh and patching should start automatically (you may have to `chmod +x` to allow execution of the script)
3. Once patching is complete you will find your newly patched files in the 'output' folder
4. Enjoy

MacOS:
1. Copy your original files into the 'original' folder with their original file names
2. Double click 2.Apply Patch-Mac.command and a terminal window should appear (you may have to `chmod +x` to allow execution of the script)
3. Once patching is complete you will find your newly patched files in the 'output' folder
4. Enjoy