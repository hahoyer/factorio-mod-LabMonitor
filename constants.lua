local modName = "LabMonitor"

return 
{
    ModName = modName,
    LabsSignal= {type="virtual", name="signal-green"},
    InactiveLabsSignal = {type="item",name="lab"},
    GraphicsPath = "__" .. modName .. "__/graphics/",
    Technology = "circuit-network",
    EntityName = "lab-monitor",
}

