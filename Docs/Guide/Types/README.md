## Types

Elm has type inference.  

### Reading Types

`String -> Int` means:
* take in a `String` argument
* return an `Int` value.  

Always write type annotations.  

> hypotenuse : Float -> Float -> Float
hypotenuse a b =
  sqrt (a^2 + b^2)

You can use type variables. Its like a generic type.  

Constrained type variables ase:
* number permits Int and Float
* appendable permits String and List a
* comparable permits Int, Float, Char, String, and lists/tuples of comparable values
* compappend permits String and List comparable

### Type Aliases

A type alias is a shorter name for a type.   

> type alias User =
  { name : String
  , age : Int
  }

> User
<function> : String -> Int -> User

> User "Sue" 58
{ name = "Sue", age = 58 } : User

### Custom Types

Custom types are known as `union type`s, `tagged union`s or `ADT`s.  

> type Msg
  = PressedEnter
  | ChangedDraft String
  | ReceivedMessage { user : User, message : String }
  | ClickedExit


### Pattern Matching

Feel free to pattern match and use wildcards.  

> toName : User -> String
toName user =
  case user of
    Regular name _ ->
      name
    Visitor name ->
      name
