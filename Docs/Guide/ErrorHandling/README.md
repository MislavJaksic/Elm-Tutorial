## Error Handling

Elm treats errors as data.  

### Maybe  

Either a Nothing or a Just value.  

> String.toFloat
<function> : String -> Maybe Float

### Result

Describes the failure.  

> type Result error value
  = Ok value
  | Err error
