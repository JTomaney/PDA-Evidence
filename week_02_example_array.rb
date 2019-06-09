@imperial_factions = ["Astra Militarum", "Adeptus Mechanicus", "Adeptus Astartes", "Nurgle Cult"]

p @imperial_factions

def exterminatus(faction)
  @imperial_factions.delete(faction)
end

exterminatus("Nurgle Cult")

p @imperial_factions
