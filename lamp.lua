lamp={
	material="glass",

	color='orange',
	x, y,pos,
	create=function(posX, ...)
			arg={...}
			lamp.x ,lamp.y, lamp.pos = nil
			if(arg[1]) then
				lamp.x, lamp.y = posX, arg[1]
				print("A lamp is creatred at X: " .. posX .. " Y: " .. arg[1]) 
			else
				lamp.pos=posX
				print("A lamp is created " .. posX)
			end
		end,
	
	oil = {type="A", burn=function()print("Oil is burning!")end},
	on=function() 
			print("lamp is on"); 
			--[[(function()
				print("Oil is burning!")
				end)()]]--
			lamp.oil.burn()
		end,
	getPosition=function()
		if(lamp.pos)then return lamp.pos 
			else return lamp.x, lamp.y 
			end
	end,	
	setPosition=function(posX, ...)
		lamp.x = nil
		lamp.y = nil
		lamp.pos = nil
		arg={...}
		if(arg[1]) then lamp.x = posX; lamp.y=arg[1];
			else lamp.pos = posX
		end
	end
}
lamp.create("0, 10")
lamp.on()
lamp.create("on the wall")
lamp.create("on the street")
lamp.create(10, 20)
x, y = lamp.getPosition()
print("lamp is at: " .. x .. " " .. y)
lamp.setPosition("in the kitchen")
x, y = lamp.getPosition()
print("lamp is : " .. x)