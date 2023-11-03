Created using xDelta3 Cross GUI 1.4.1 by dan0v, https://github.com/dan0v/xdelta3-cross-gui

PS2 Saint Seiya - Saint Seiya: Meiou Hades Juunikyuu-hen SLPS-25744 v2 (image patch)

(updated NOV 2023) 
-make a easy patch image instead memory codes, 


Saint seiya series on ps2 only released in japan and europe with their respective problems (japan only japanese for non japanese) and europe (only in blurry PAL 50hz/25fps tv mode and generic intro sound), so debugging executables couple months ago find the games has locked their video modes and languages, with this patch you can play European version in NTSC 60hz tv mode and framerate unlocked ( 60fps) but for people has the japanese version you can play in 4 languages, the languages files are hidden (or maybe unfinished) this codes unlock the languages and convert your japanese copy in multilanguage game with japanese intro and music.

Use the pack:

1-Saint Seiya - Meiou Hades Juunikyuu-hen (Japan)-patchCONSOLE (Enable multilang option, default to 30fps)

2-Saint Seiya - Meiou Hades Juunikyuu-hen (Japan)-patchPCSX2 (Enable multilang option, enable 60 fps, enable sharp backbuffer-less blurry-)  

3-Saint Seiya - 聖闘士星矢　～冥王ハーデス十二宮編～ (Japan)-patchJAPonly (フレームレートを60に設定し、シャープバックバッファを有効にして画像をぼやけないようにします)

Disclaimer codes are not fully tested.
more info https://felixthecat1970.github.io/gamepatches-blog/blog/ps2/ps2-saint-seiya-series/

How to patch:
verify your original ISO dump filehash (Redump verified)
SHA-1 fdd7b2169f2bb687778d358a53609664f92694fd

Rename your dump to:
Saint Seiya - The Sanctuary (Europe) (En,Ja,Fr,De,Es,It)

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