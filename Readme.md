This small Shiny application demonstrates Shiny's automatic UI updates. 

Input different text inputs and notice how the `renderText` expression is automatically re-evaluated when its dependant, on`input$text`, changes, causing a revised catalog of users biographic information to be rendered.
