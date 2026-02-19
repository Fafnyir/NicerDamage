-- Path to your custom font file
local customFontPath = "Interface\\AddOns\\NicerDamage\\Fonts\\Font.ttf"

-- Function to set the damage font
local function SetCustomDamageFont()
    -- Replace the damage font
    DAMAGE_TEXT_FONT = customFontPath
end

-- Run the function when the game is loaded
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addonName)
    if addonName == "NicerDamage" then
        SetCustomDamageFont()
    end
end)