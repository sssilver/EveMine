module Resources exposing (..)


type OreKindA
    = Brimful
    | Glistening


type OreKindB
    = Copious
    | Twinkling


type OreKindC
    = Lavish
    | Shimmering


type OreKindD
    = Replete
    | Glowing


type OreKindE
    = Bountiful
    | Shining


type
    Ore
    -- Kind A
    = Bitumens { volume : Int, kind : Maybe OreKindA }
    | Coesite { volume : Int, kind : Maybe OreKindA }
    | Sylvite { volume : Int, kind : Maybe OreKindA }
    | Zeolites { volume : Int, kind : Maybe OreKindA }
      -- Kind B
    | Cobaltite { volume : Int, kind : Maybe OreKindB }
    | Euxenite { volume : Int, kind : Maybe OreKindB }
    | Scheelite { volume : Int, kind : Maybe OreKindB }
    | Titanite { volume : Int, kind : Maybe OreKindB }
      -- Kind C
    | Chromite { volume : Int, kind : Maybe OreKindC }
    | Otavite { volume : Int, kind : Maybe OreKindC }
    | Sperrylite { volume : Int, kind : Maybe OreKindC }
    | Vanadinite { volume : Int, kind : Maybe OreKindC }
      -- Kind D
    | Carnotite { volume : Int, kind : Maybe OreKindD }
    | Cinnabar { volume : Int, kind : Maybe OreKindD }
    | Pollucite { volume : Int, kind : Maybe OreKindD }
    | Zircon { volume : Int, kind : Maybe OreKindD }
      -- Kind E
    | Loparite { volume : Int, kind : Maybe OreKindE }
    | Monazite { volume : Int, kind : Maybe OreKindE }
    | Xenotime { volume : Int, kind : Maybe OreKindE }
    | Ytterbite { volume : Int, kind : Maybe OreKindE }


type Mineral
    = Hydrocarbons
    | AtmosphericGases
    | EvaporiteDeposits
    | Silicates
    | Cobalt
    | Scandium
    | Tungsten
    | Titanium
    | Chromium
    | Cadmium
    | Platinum
    | Vanadium
    | Technetium
    | Mercury
    | Caesium
    | Hafnium
    | Promethium
    | Neodymium
    | Dysprosium
    | Thulium
    | Pyerite
    | Mexallon
