local runmask
local CreateFrame = CreateFrame
BaDKP = CreateFrame("Frame")
local BaDKP = BaDKP

--function BaDKP:SetStateOn()
	--runmask = true
--end

--function BaDKP:SetStateOff()
	--runmask = false
--end

BaDKP:SetScript("OnEvent", function(self, event, ...) -- szerintem nem működik az event caller
	if (runmask == true) and (event == "CHAT_MSG_RAID") or (event == "CHAT_MSG_RAID_LEADER") or (event == "CHAT_MSG_RAID_WARNING") then -- nem ártana a szintaxist ismerni lol
		local msg,sender = arg[1],pruneCrossRealm(arg[2])
		print(msg) -- 
	end
end)

SLASH_BADKP1 = "/badkp"
SLASH_BADKP2 = "/baddkp"
SlashCmdList["BADKP"] = function(msg)
	msg = msg or ""
	msg = string.lower(msg or "")
	if( msg == "on") then
		--BaDKP:SetStateOn()
		runmask = true
		print("bekapcsolva")
	elseif( msg == "off") then
		--BaDKP:SetStateOff()
		runmask = false
		print("kikapcsolva")
	elseif( msg == "kiameleg") then 
		print("blue a meleg")
	else
	print("2 betu es elgepelted bazmeg")
	end
end

	

		
		
