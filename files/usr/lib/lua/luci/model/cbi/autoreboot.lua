local m = Map("autoreboot", translate("定时重启"),
	translate("MT7987A / OpenWrt 25.10 定时重启插件"))

local s = m:section(NamedSection, "main", "autoreboot", "")
s.anonymous = true

s:option(Flag, "enabled", translate("启用定时重启"))

local h = s:option(Value, "hour", translate("小时 (0-23)"))
h.datatype = "range(0,23)"; h.default = "4"

local mi = s:option(Value, "minute", translate("分钟 (0-59)"))
mi.datatype = "range(0,59)"; mi.default = "0"

local w = s:option(Value, "weekday",
	translate("星期 (0=周日 1-6 周一到周六, * 每天)"))
w.default = "*"

local d = s:option(Value, "delay", translate("重启前延迟 (秒)"))
d.datatype = "uinteger"; d.default = "10"

return m
