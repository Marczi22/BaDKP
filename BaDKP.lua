local runmask
BaDKP = select(2, ...)

local function BaDKP:SetStateOn()
	set runmask = true
end

local function BaDKP:SetStateOff()
	set runmask = false
end

BaDKP:SetScript("OnEvent", function(self, event, ...)
	if (runmask) and (event == "CHAT_MSG_RAID") or (event == "CHAT_MSG_RAID_LEADER") or (event == "CHAT_MSG_RAID_WARNING") then -- na ez kurva elegáns tényleg
	szoveg = arg[1]
	print(szoveg+" tesztmasolat")
	end
end



SLASH_BADKP1 = "/badkp"
SLASH_BADKP2 = "/baddkp"
SlashCmdList["BADKP"] = function(msg)
	msg = msg or ""
	msg = string.lower(msg or "")
	if( msg == "on") then
		BaDKP:SetStateOn()
		print("bekapcsolva")
	elseif( msg == "off") then
		BaDKP:SetStateOff()
		print("kikapcsolva")
	else
	print("2 betu es elgepelted bazmeg")
	end
	

		
		
