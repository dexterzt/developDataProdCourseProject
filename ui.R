library(shiny)

shinyUI(fluidPage(
  titlePanel(h2("Your diet profile")),
  
  sidebarLayout(
    sidebarPanel(width=6, 
      helpText("Enter information to obtain your maintenance daily caloric intake."),
      
      numericInput("weight", 
                   label = h6("Current Weight in lbs"), 
                   value = 0), 
      numericInput("height", 
                   label = h6("Height in cms"), 
                   value = 0), 
      selectInput("gender", label = h6("Gender"), 
                  choices = list("Male" = "male", "Female" = "female"), selected = "male"),
      numericInput("age", 
                   label = h6("Age"), 
                   value = 0), 
      radioButtons("active", 
                         label = h6("Activity level"), 
                         choices = list("low intensity activities and leisure activities (primarily sedentary)"=1.2 , 
                                        "light exercise (leisurely walking for 30-50 minutes 3-4 days/week, golfing, house chores)"=1.375, 
                                        "moderate exercise 3-5 days per week (60-70% MHR for 30-60 minutes/session)"=1.55,
                                        "active individuals (exercising 6-7 days/week at moderate to high intensity (70-85% MHR) for 45-60 minutes/session)"=1.725,
                                        "extremely active individuals (engaged in heavy/intense exercise like heavy manual labor, heavy lifting, endurance athletes, and competitive team sports athletes 6-7 days/week for 90 + minutes/session)"=1.9),
                         selected = 1.55)
      #submitButton("Submit")
    ),
    mainPanel(width=6,
      div("Simply input your information on the left panel in the indicated units to 
         get your maintenace daily caloric intake below. There is no need to wait or submit,
         result is calculated and updated immdediately."),
      br(),
      div("For the formula employed, see"),
      a(href = "http://www.bodybuilding.com/fun/calorie-know-how-get-equation-right-to-get-results.htm", 
        "Calorie Know-How: Get The Equation Right To Get Results!"),
      br(),
      div("New to the concept of calories? See here"),
      a(href="https://en.wikipedia.org/wiki/Calorie#Nutrition",
        "What are calories?"),
      br(),
      h2("Your maintenance daily caloric intake is: ", align = "center"),
      h1(textOutput("dailycal"), align = "center")
    )
  )
))