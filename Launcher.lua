-- HWID check
print("Starting HWID Check")

local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
local WhitelistedHWIDs = {"E61E3D52-CBD9-4587-A3E9-548024D53368","",""}
local qNVAKkuwxNpqruLjSRHg = false

function CheckHWID(hwidval)
for _,whitelisted in pairs(WhitelistedHWIDs) do
 if hwidval == whitelisted then
     return true
 elseif hwidval ~= whitelisted then
     return false
       end
    end
end

qNVAKkuwxNpqruLjSRHg = CheckHWID(HWID)

wait(1)

if qNVAKkuwxNpqruLjSRHg == true then
 print("Check 2 Passed!")
 wait(.5)
 print("Launching Peak Client!")
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Solomonexy/Painless-V3/main/Premium.lua'))()
else
    print("Not verified!")
end
