# Credits: https://github.com/shrimpza/kodi-addons
import os, subprocess
import xbmcaddon, xbmc, xbmcgui

addon = xbmcaddon.Addon()

def launch():

	addonPath = addon.getAddonInfo('path')

	cmd = os.path.join(addonPath, 'script.sh')

	try:
		xbmc.log("Launching script %s" % cmd)
		subprocess.call(["chmod", "+x", cmd])
		subprocess.call('"' + cmd + '"', shell=True)
	except:
		xbmcgui.Dialog().ok("Failed to launch", "Failed to launch script %s" % cmd)

launch()
