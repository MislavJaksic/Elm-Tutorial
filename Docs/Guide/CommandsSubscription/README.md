## Commands and Subscriptions

Commands and subscriptions interact with the outside world.  

### HTTP

`Model` in loading state and will execute command.  
Message type is most likely a string. Uses `Result`.  

`update` function unwraps the message type.  

Issue commands from `init` and `update` functions.  

### JSON

Uses JSON decoders.  
Creates more message types.  

### Random

Uses generators.  
Shows how to use commands with generators.  

### Time

Uses time.  
Subscriptions trigger background actions.  
