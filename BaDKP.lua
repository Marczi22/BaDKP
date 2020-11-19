local runmask = false
local CreateFrame = CreateFrame
BaDKP = CreateFrame("Frame")
local BaDKP = BaDKP

function BaDKP:SetStateOn()
	runmask = true
end

function BaDKP:SetStateOff()
	runmask = false
end

BaDKP:SetScript("OnEvent", function(self, event, ...)
	if (runmask) and (event == "CHAT_MSG_RAID") or (event == "CHAT_MSG_RAID_LEADER") or (event == "CHAT_MSG_RAID_WARNING") then -- na ez kurva elegáns tényleg
		szoveg = arg[1]
		print(szoveg+" tesztmasolat")
	end
end)

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
	elseif( msg == "kiameleg") then 
		print("blue a meleg")
	else
	print("2 betu es elgepelted bazmeg")
	end
end

	

		
		
