----------------------------------
-- Area: Fei'Yin
--  NM:  Southern Shadow
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Southern Shadow's ToD
    SetServerVariable("[POP]Southern_Shadow", os.time() + 57600); -- 16 hours
    DisallowRespawn(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Southern_Shadow");
    SetServerVariable("[PH]Southern_Shadow", 0);
    DisallowRespawn(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
