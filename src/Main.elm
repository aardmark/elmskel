module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)


-- MAIN

main : Program () Model Msg
main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }


-- MODEL

type alias Model = String
init : () -> (Model, Cmd Msg)
init _ =
  ( "It works"
  , Cmd.none
  )


-- UPDATE

type Msg
  = DoNothing
  | DoSomething

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    DoNothing ->
      (
        model
      , Cmd.none
      )
    DoSomething ->
      (
        model
        , Cmd.none
      )


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions _ =
  Sub.none


-- VIEW

view : Model -> Html Msg
view model =
  section [class "section"] [
      div [class "container"] [
          span [] [text model]
          , i [classList [("ml-2", True), ("fas", True), ("fa-thumbs-up", True), ("is-size-5", True)]] []
      ]
  ]
