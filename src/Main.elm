module Main exposing (..)


import Browser
import Html exposing (Html, div, text)


main : Program () Model Msg
main =
    Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


type alias Model = Int
type Msg = None


init : () -> (Model, Cmd Msg)
init _ = (0, Cmd.none)


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        None ->
            (model, Cmd.none)


view : Model -> Html Msg
view _ =
    div [] [ text "Hello, World!" ]  
