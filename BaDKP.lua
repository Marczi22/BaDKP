function BaDKPFrame_OnLoad()
	BaDKPFrame:RegisterEvent("CHAT_MSG_RAID");
	BaDKPFrame:RegisterEvent("CHAT_MSG_RAID_LEADER");
	BaDKPFrame:RegisterEvent("CHAT_MSG_RAID_WARNING");
	BaDKPFrame:Hide();
	local runmask
end


SLASH_BADKP1 = "/badkp"
SLASH_BADKP2 = "/baddkp"
SlashCmdList["BADKP"] = function(msg)
	msg = msg or ""
	msg = string.lower(msg or "")
	if( msg == "on") then
		--BaDKP:SetStateOn()
		runmask = 1
		print("bekapcsolva")
	elseif( msg == "off") then
		--BaDKP:SetStateOff()
		runmask = 0
		print("kikapcsolva")
	elseif( msg == "kiameleg") then 
		print("blue a meleg")
	else
	print("2 betu es elgepelted bazmeg")
	end
end

function BaDKPFrame_OnEvent(event, ...)
	local arg1, arg2, arg3, arg11, arg12 = ...;
	local szam = tonumber(arg1)
	local szorzat
	
	if (runmask == 1) and (szam ~= 0) then
	szorzat = szam*3
	szam = szam/3
	SendChatMessage("a licit haromszorosa: " .. szorzat .. ", a harmada: " .. szam , "RAID")
	end
	
end

		
		
