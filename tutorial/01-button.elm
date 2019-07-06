import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int -- -> single integer

init : Model
init =
  0


-- UPDATE

type Msg = Increment | Decrement -- -> types of messages/actions the user can send/do

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- VIEW -- -> no templating language, it's all Elm!

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ] -- -> click a button to send a message
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]