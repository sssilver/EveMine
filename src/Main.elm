module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Events exposing (..)
import Element.Font as Font
import Element.Input as Input
import Html exposing (Html)
import Parser exposing (parseOreInput)


orePlaceholder : String
orePlaceholder =
    """Compressed Twinkling Cobaltite    4397
Compressed Glowing Carnotite      2603
Glowing Cinnabar                  1918
Glistening Coesite                2740"""


type Msg
    = ChangeInput String


init : Model
init =
    { input = orePlaceholder }


type alias Model =
    { input : String
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeInput newInput ->
            { model | input = newInput }


view : Model -> Html Msg
view model =
    layout [] <|
        row
            [ height fill, centerX, spacing 30 ]
            [ el [ width fill ]
                (Input.multiline
                    [ below <|
                        paragraph [ padding 30, Font.family [ Font.monospace ] ]
                            [ text <| Debug.toString (parseOreInput model.input) ]
                    , Font.family
                        [ Font.monospace ]
                    ]
                    { onChange = ChangeInput
                    , text = model.input
                    , label =
                        Input.labelAbove []
                            (text "Paste Ore")
                    , spellcheck = False
                    , placeholder = Just (Input.placeholder [] (text orePlaceholder))
                    }
                )
            ]


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }
