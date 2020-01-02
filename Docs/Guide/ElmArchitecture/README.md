## The Elm Architecture

Three parts:
* Model — the state of your application
* View — a way to turn your state into HTML
* Update — a way to update your state based on messages

### Buttons

The main value is special in Elm.  
It describes what gets shown on screen.  

Model captures all the app data.  

View takes in the Model as an argument.  
View outputs HTML.  

Update describes how our Model will change over time.  

### Text Fields

Use records for user input.  

Update on input.  

### Forms

Start by creating Model.  

Update the record in the Model.  

HTML elements are just like an other function.  
