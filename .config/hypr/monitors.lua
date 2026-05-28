-- See https://wiki.hypr.land/Configuring/Monitors/
hl.monitor({ -- rule for random monitors
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1
})

--------------------
-- Laptop monitor --
--------------------
hl.monitor({
		output   = "eDP-1",
		mode     = "1920x1080@60",
		position = "0x1080",
		scale    = 1
		--addreserved = 20,0,0,0 # adds a reserved space free of windows
})


------------------
-- AOC monitor  --
------------------
hl.monitor({
		output   = "desc:AOC 24G2W1G5 0x00000960",
		mode     = "1920x1080@74.97Hz",
		position = "0x0",
		scale    = 1
})


-------------------
-- Acer monitor  --
-------------------
hl.monitor({
		output   = "desc:Acer Technologies Acer VG240Y 0x8130C978",
		mode     = "1920x1080@74.97Hz",
		position = "1920x0",
		scale    = 1
})

