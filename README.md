# Configuration
## config.txt
This is base configuration for your addon.
- `ADDON_ID` - ID of your addon (e.g. **script.launcher.firefox**)
- `NAME` - Name of your addon that shows up on the list (e.g. **Firefox**)
- `VERSION` - Version of your addon (e.g. **1.0**)
- `PROVIDER` - Provider of your addon (e.g. **Mozilla Foundation**)
- `LANGUAGE` - Language code for summary and description of your addon (e.g. **en**)
- `SUMMARY` - A short description about what your addon does (e.g. **Firefox laucher**)
- `DESCRIPTION` - Longer description about your addon
- `IMAGE_ICON` - path to icon image for your addon (e.g. **/home/user/Pictures/image.png**)
- `IMAGE_FANART` - path to fanart image for your addon (e.g. **/home/user/Pictures/fanart.jpg**)
## script.sh
This is a script file, that will be executed after launching your addon from Kodi.
# Installation
To install your addon you need to build it first. Here are possible **make** rules that you can do:
- `make` - make configurations and build addon.zip
- `make install` - install addon to default Kodi directiory
- `make uninstall` removes addon from default Kodi directiory
