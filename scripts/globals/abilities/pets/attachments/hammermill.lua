-----------------------------------
-- Attachment: Hammermill
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onUseAbility
-----------------------------------

function onEquip(pet)
    pet:addMod(MOD_SHIELD_BASH, 30)
end

function onUnequip(pet)
    pet:delMod(MOD_SHIELD_BASH, 30)
end

function onManeuverGain(pet,maneuvers)
    if (maneuvers == 1) then
        pet:addMod(MOD_SHIELD_BASH, 20);
    elseif (maneuvers == 2) then
        pet:addMod(MOD_SHIELD_BASH, 50);
    elseif (maneuvers == 3) then
        pet:addMod(MOD_SHIELD_BASH, 100);
    end
end

function onManeuverLose(pet,maneuvers)
    if (maneuvers == 1) then
        pet:delMod(MOD_SHIELD_BASH, 20);
    elseif (maneuvers == 2) then
        pet:delMod(MOD_SHIELD_BASH, 50);
    elseif (maneuvers == 3) then
        pet:delMod(MOD_SHIELD_BASH, 100);
    end
end
