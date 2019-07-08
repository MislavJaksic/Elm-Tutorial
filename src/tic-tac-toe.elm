import Browser
import Html
import Svg



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


type alias Model = Svg.Svg Msg


init : () -> (Model, Cmd Msg)
init _ =
  ( Svg.text "Hello world!"
  , Cmd.none
  )



-- UPDATE


type Msg
  = Update String


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  ( (Svg.text msg)
  , Cmd.none
  )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


view : Model -> Html.Html Msg
view model =
  Html.text (Svg.text model)