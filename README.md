# About
This script lets you easily make your own Kodi addon, that will execute your script directly from GUI.
# Configuration
You have to configure two main files for your addon.
## config.txt
This is base configuration for your addon.
- `ADDON_ID` [required] - ID of your addon (e.g. **script.launcher.firefox**)
- `NAME` [required] - Name of your addon that shows up on the list (e.g. *Firefox*)
- `LANGUAGE` [required] - Language code for summary, description and the whole addon (e.g. *en*)
- `VERSION` [optional] - Version of your addon (e.g. *1.0*)
- `PROVIDER` [optional] - Provider of your addon (e.g. *Mozilla Foundation*)
- `SUMMARY` [optional] - A short description about what your addon does (e.g. *Firefox laucher*)
- `DESCRIPTION` [optional] - Longer description about your addon
- `IMAGE_ICON` [optional] - Path to icon image for your addon (e.g. */home/user/Pictures/image.png*)
- `IMAGE_FANART` [optional] - Path to fanart image for your addon (e.g. */home/user/Pictures/fanart.jpg*)
## script.sh
This is a script file, that will be executed after launching your addon from Kodi.
# Installation
To install your addon you need to build it first. Here are possible **make** rules that you can do:
- `make` - configure and build addon.zip
- `make install` - install addon to default Kodi directiory
- `make uninstall` - remove addon from default Kodi directiory
- `make clean` - clean build directory
