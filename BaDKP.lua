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
	local szam = arg1 -- arg1 az üzenet tartalma az apiból
	local szorzat, sub1, sub2
	sub1 = string.sub(arg1, 1, string.len(arg1)-1) -- az üzenet, kivéve utolsó betűje
	sub2 = string.sub(arg1, string.len(arg1)) --az utolsó betű
	
	if (tonumber(sub1) ~= nil) and (runmask == 1) and (tonumber(szam) == nil) and (sub2 == "k") then --ha az üzenet szám, és az utolsó betűje k, akkor rövidített a küldő, tehát értelmezzük
		szorzat = sub1*3
		szam = 1000*sub1/3 
		SendChatMessage("a licit haromszorosa: " .. szorzat .. "k, a harmada: " .. szam  , "RAID") -- ua. mint lent, csak van benne 2 "k"
	elseif (runmask == 1) and (tonumber(szam) ~= nil) and (sub2 ~= "k") then -- ha szám és nem írt a végére k-t
	szorzat = szam*3
	szam = szam/3
	SendChatMessage("a licit haromszorosa: " .. szorzat .. ", a harmada: " .. szam , "RAID")
	end
	
end

		
		
