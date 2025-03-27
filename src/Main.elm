module Main exposing (main)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Styles.Colors exposing (slate50, slate900)


type alias Flags =
    {}


type alias Model =
    ()


initialModel : Model
initialModel =
    ()


type Msg
    = NoOp


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( initialModel, Cmd.none )


main : Program Flags Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


view : Model -> Browser.Document Msg
view _ =
    { title = "Kaspeti"
    , body =
        [ layout
            [ Background.color slate900 ]
            comingSoonRow
        ]
    }


comingSoonRow : Element msg
comingSoonRow =
    column [ centerX, centerY, spacing 15 ]
        [ el [ Font.size 50, Font.color slate50 ] (text "Coming soon!")
        , el [ centerX, Font.size 25, Font.color slate50 ] (text "kaspeti.no")
        ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    -- case Debug.log "msg" msg of
    case msg of
        NoOp ->
            ( model, Cmd.none )
