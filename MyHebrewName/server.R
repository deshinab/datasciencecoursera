library(shiny)
library(stringr)

# User imput is transliterated using the simple binary code below and outputs the 
# Hebrew equivalent of the enlsish letters in thier name. 
shinyServer(function(input, output) {
     
     output$text = renderText({
          str_replace_all(input$name,
                          regex(c("th"="ת","sh"="ש","ch"="ח", "ts"="צ", "e"="א", "b"= "ב", "g"="ג",
                                  "d"="ד", "h" = "ה","a"="א", "r"="ר", "i"="י","ee"= "י", "w" = "ו","u"="ו",
                                   "z" = "ז","t"="ט", "i"="י","c"= "כ", "l"="ל", 
                                   "m"= "מ", "n"="נ", "s"="ס", "o"= "ע", "p"="פ", 
                                   "f"="פ", "q"="ק", "k"="ק", "r"="ר" , "j"="י", "v" = "ב", "x"="קס", "y"="י"
),
          ignore_case = T))
          
     })
})
