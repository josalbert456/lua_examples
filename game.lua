function sprite(...)
	print(arg[1][1], arg[1][2], arg[1][3])
	if arg[1].updateA~=nil then arg[1].updateA() end
	if arg[1].updateB~=nil then arg[1].updateB() end
end
dofile("game.data")
