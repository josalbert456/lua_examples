Tester = {}
function Tester.powerTwo(base)
	local tmp = base
	while tmp>=0 do
		if(tmp==2) then return true end
		if(tmp%2==1) then return false end
		tmp = tmp/2
	end
	if tmp==0 then return true	end
end
index = 0
while true do
	index = index + 1
	if index > 100000000 then break end
	if(Tester.powerTwo(index)) then print(index) end 
end

return Tester