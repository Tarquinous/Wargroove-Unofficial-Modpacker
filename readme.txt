ModPacker - 1.6.2
Unofficial Tool for installing and creating mods for Wargroove. This Tool is required for installing mods in .hmd format.
The download comes with one simple Mod which removes the intro video for testing the installation process.
(c) andre111 - 2019

In Version 1.6.2 it supports modding/replacement of Sprites, Music, SFX, LUA scripts, Config files as well as spritesheet/animation definitions.

Requirements:
    * Java >=11

Usage (Installing Mods):
    1. Extract the zip file.
    2. Run the included .jar
    3. The Tool will look for a Steam installation of Wargroove. When that cann't be found you will be asked to manually select the "Wargroove" directory.
    4. Click Use/Apply Mods. 
    5. You can add, remove and reorder mods using the Buttons on the right. (In .hmd Format of in a .zip containing a single .hmd)
    6. Clicking apply will install any mods you added. (Note: This operation will take 1-3 minutes mostly depending on your harddrive speed)
       (Clicking apply with no mods in the list will revert the game to vanilla state)
    7. When everything worked correctly you will now see additional text on the main menu of the game indicating how many mods were installed.

Usage (Developing Mods):
    1. Run the Tool like above, but select Develop Mod
    2. Press Unpack Game Data (Note: This operation will take 1-3 minutes mostly depending on your harddrive speed)
    3. The extracted Game Data can now be found in the /data/ directory
       Since Version 1.5.0 using the patching system is recommended whenever possible (please read /docs/patches.txt)
       (Only if needed: Modify these files as required)
    4. To test your current modifications, press "Apply changes to game" and run the game
    5. With the modifications complete press Pack Mod
    6. Fill in the Mod Name/Description/Authors
    7. The Tool will now pack a .hmd in the /mods/ directory which only stores the modifications you made  (Note: This operation will take 1-3 minutes mostly depending on your harddrive speed)

Notes for modding:
    * The .pro files mainly describe properties of how the file is stored in the .dat and contain no relevant information for most mods. Change them only if you "know what you are doing" as that can quickly result in the game crashing.
    * Config, SpriteSheet Definition and Animation Definition files are converted from binary to a more editable JSON format
    * Version 1.2.2 and up feature new tools for swapping indexed/paletted images to something more managable. Just "PaletteSwap" an image, edit it and the "UnPaletteSwap" it again. 
    * Version 1.3.2 and up feature a tool for extracting animation frames/single sprites from spritesheets (see the readme changelog for an explanation)
    * Please run "Unpack Game Data" again after updating the tool, as old unpacked data can become incompatible with certain changes
    * Please read the included documentation in /docs/

Changelog:
    1.6.2:
      * Added SET_IF_MISSING operation to JSON patching
      * Files in /overrides/ act as if they were modified files in /data/ when packing a mod
    1.6.1:
      * Adjusted patching system to allow patching mulitple files using one patch file. Modders please read /docs/patches.txt
    1.6.0:
      * Added SpriteSheet patching system. Allows adding and replacing of sprites with any dimensions. Modders please read /docs/patches.txt
    1.5.0:
      * Added patching system. Allows for much better mod compatibility. Modders please read /docs/patches.txt
      * Minimally increased mod installation speed
      * Increased speed of repeated consecutive "Apply current changes" usage
    1.4.0:
      * Improved mod installation speed in case not all .dat files need to be edited
      * Improved config file conversion (should be easier to read and modify now)
    1.3.2:
      * Add Animation Extractor (for easier editing of animations and single sprites spread across a spritesheet). Usage:
      ** Extract an Animation by selecting the corresponding .anim.json (even still frame sprites have one)
      ** The Tool will extract all frames to the /extracted/ directory
      ** (It will also automatically apply the palette swap if needed)
      ** Modify the frames to your liking (cannot change dimensions)
      ** Repack the Animation by selecting the .anim.json (will swap palette back if needed)
      ** Then pack your mod like normal
      * Improved error reporting
    1.3.1:
      * Fix loading of .zip files with special characters (including spaces)
    1.3.0:
      * Added support for loading .hmd files from a .zip (the zip can only contain a single .hmd and nothing else) for better nexusmods support
      * Fixed ImageTools palette swap "deleting" some colors (such as shadows)
      * New and improved .hmd format (Mods created with 1.2.X are still supported)
      ** This only saves changed pixels for images. This both lowers mod file size and allows multiple mods to edit the same SpriteSheet (as long as they edit different parts)
    1.2.3:
      * Mods are now packed with more meaningfull filenames
    1.2.2:
      * Added ImageTools for swapping palettes to something more workable (don't forget to swap back when you are done)
    1.2.1:
      * Added easy mod testing during development: Pressing "Apply changes to game" will directly apply the currently made changes to the game without having to pack a mod.
    1.2.0:
      * Added SpriteSheet and Animation definition file to JSON conversion.
      * Now renames most PNG images to have an actual .png file ending for easier modification.
    1.1.0:
      * Added config file to JSON conversion. For easier and human readable config file modding.
    1.0.0:
      * First Public Release