module Parser exposing (..)

{- Sample:
   Compressed Twinkling Cobaltite    4397
   Compressed Glowing Carnotite      2603
   Glowing Cinnabar                  1918
   Glistening Coesite                2740
-}


type alias OreEntry =
    { name : String
    , volume : Int
    }


parseOreInputLine : String -> Maybe OreEntry
parseOreInputLine line =
    let
        parts =
            String.words line
                |> List.reverse
                |> List.filter
                    (\word ->
                        String.toLower word /= "compressed"
                    )

        volume =
            List.head parts
                |> Maybe.andThen String.toInt

        name =
            case parts of
                _ :: xs ->
                    Just (List.reverse xs |> String.join " ")

                [] ->
                    Nothing
    in
    Maybe.map2 OreEntry name volume


parseOreInput : String -> List OreEntry
parseOreInput input =
    String.lines input |> List.filterMap (\line -> parseOreInputLine line)
