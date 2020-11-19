local runmask
BaDKP = select(2, ...)

function BaDKP:SetStateOn()
	set runmask = true
end

function BaDKP:SetStateOff()
	set runmask = false
end





SLASH_BADKP1 = "/badkp"
SLASH_BADKP2 = "/baddkp"
SlashCmdList["BADKP"] = function(msg)
	msg = msg or ""
	msg = string.lower(msg or "")
	if( msg == "on") then
		BaDKP:SetStateOn()
	elseif( msg == "off") then
		BaDKP:SetStateOff()
	else
	print("2 betu es elgepelted bazmeg")
	end
	

		
		
