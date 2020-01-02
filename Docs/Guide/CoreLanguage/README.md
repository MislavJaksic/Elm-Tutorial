## Core Language

### Values

> 1 + 1

> "hello"

> "butter" ++ "fly"

### Functions

Values passed to a function are called arguments.  

> greet name =
|   "Hello " ++ name ++ "!"

> greet "Alice"

> madlib animal adjective =
|   "The ostentatious " ++ animal ++ " wears " ++ adjective ++ " shorts."

> madlib "cat" "ergonomic"

### If Expressions

> greet name =
|   if name == "Abraham Lincoln" then
|     "Greetings Mr. President!"
|   else
|     "Hey!"

> greet "Tom"

> greet "Abraham Lincoln"

### Lists

Similar to arrays in JavaScript.  
Members have to have the same type.  

> names =
|   [ "Alice", "Bob", "Chuck" ]

> List.isEmpty names

> List.length names

> List.reverse names

> numbers = [4,3,2,1]

> List.sort numbers

> increment n =
|   n + 1

> List.map increment numbers

### Tuples

> isGoodName name =
|   if String.length name <= 20 then
|     (True, "name accepted!")
|   else
|     (False, "name was too long; please limit it to 20 characters")

> isGoodName "Tom"

### Records

Each value is associated with a name.  

> john =
|   { first = "John"
|   , last = "Hobson"
|   , age = 81
|   }
|
{ age = 81, first = "John", last = "Hobson" }

> john.last

> john = { first = "John", last = "Hobson", age = 81 }

> .last john

> List.map .last [john,john,john]

> john = { first = "John", last = "Hobson", age = 81 }

> { john | last = "Adams" }

> { john | age = 22 }
