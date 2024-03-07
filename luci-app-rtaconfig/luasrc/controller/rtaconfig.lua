-- Copyright 2024 rtaserver team <rizkidhc31@gmail.com>

module("luci.controller.rtaconfig", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/rtaconfig") then
		return
	end

	local page
	page = entry({"admin","system","rtaconfig"},alias("admin","system","rtaconfig","upload"),_("RTA Config"),61)
	page.dependent = true

	if uci.cursor():get("luci", "main", "mediaurlbase") == "/luci-static/rta" then
	entry({"admin","system","rtaconfig","rtaset"},cbi("rtaconfig/rtaset"),_("RTA Theme Config"),20).leaf = true
	entry({"admin", "system","rtaconfig","rtaupload"}, form("rtaconfig/rtaupload"), _("Desktop background upload"), 80).leaf = true
	end
	entry({"admin", "system","rtaconfig","upload"}, form("rtaconfig/upload"), _("Login Background Upload"), 70).leaf = true
end