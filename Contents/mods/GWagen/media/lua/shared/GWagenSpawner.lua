require "VehicleZoneDefinition"
VehicleZoneDistribution.GWagen = VehicleZoneDistribution.GWagen or {}
VehicleZoneDistribution.GWagen.vehicles = VehicleZoneDistribution.GWagen.vehicles or {}
VehicleZoneDistribution.GWagen.vehicles["Base.GWagen"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.GWagen.baseVehicleQuality = 1.1;
VehicleZoneDistribution.GWagen.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_GWagen_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("GWagen", "ParkingStall", 3842, 6175, 0, 4, 4, { Direction = "S" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_GWagen_Zones)