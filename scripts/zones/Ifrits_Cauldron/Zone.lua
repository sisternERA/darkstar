-----------------------------------
--
-- Zone: Ifrits_Cauldron (205)
--
-----------------------------------
package.loaded["scripts/zones/Ifrits_Cauldron/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ifrits_Cauldron/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/zone");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
    -- Ash Dragon
    SetRespawnTime(17617147, 900, 10800);

    UpdateTreasureSpawnPoint(17617224);
end;

-----------------------------------
-- onConquestUpdate
-----------------------------------

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        player:setPos(-60.296,48.884,105.967,69);
    end
    return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
end;

-----------------------------------
-- onGameHour
-----------------------------------

function onGameHour(zone)
    local VanadielHour = VanadielHour();
    local FlameSpout = 17617209;

    if (VanadielHour % 3 == 0) then -- Opens flame spouts every 3 hours Vana'diel time
        GetNPCByID(FlameSpout):openDoor(90); -- Ifrit's Cauldron flame spout (H-6) Map 1
        GetNPCByID(FlameSpout+1):openDoor(90); -- Ifrit's Cauldron flame spout (H-6) Map 5
        GetNPCByID(FlameSpout+2):openDoor(90); -- Ifrit's Cauldron flame spout (I-10) Map 8
        GetNPCByID(FlameSpout+3):openDoor(90); -- Ifrit's Cauldron flame spout (E-7) Map 8
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;
