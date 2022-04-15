local distributionTable = VehicleDistributions[1]

VehicleDistributions.GWagenGloveBox = {
    rolls = 7,
    items ={
        "Pistol", 0.3,
        "Gloves_LeatherGloves", 1,
        "Glasses_Aviators", 2,
    }
}

VehicleDistributions.GWagenMisc = {
    rolls = 10,
    items ={

        "FirstAidKit", 0.3,
        "Bag_GolfBag", 3,
        "GolfClub", 5,
        "Hat_GolfHatTINT", 3,
    }
}

VehicleDistributions.GWagen = {

	GloveBox = VehicleDistributions.GWagenGloveBox;
	TruckBed = VehicleDistributions.GWagenMisc;
}

distributionTable["GWagen"] = { Normal = VehicleDistributions.GWagen; }


