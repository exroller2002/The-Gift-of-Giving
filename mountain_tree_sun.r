#The Gift of Giving 

#1 
#Set the scene
library(ggplot2)

#2
#Create a data frame
gift_data <- data.frame(gift_cost = c(10, 15, 20, 25, 30, 35, 40),
                         gift_type = c("Book", "Flowers", "Sports Gear", 
                                       "Concert Tickets", "Gift Card", "Jewelry", "Charity Donation"))
#3
#Summarize the data
summary(gift_data)

#4
#Visualize the data
ggplot(data = gift_data,
       aes(x = gift_type,
           y = gift_cost)) +
  geom_bar(stat = "identity") +
  ylab("Gift Cost ($)") +
  xlab("Gift Type") +
  ggtitle("Average Gift Cost")

#5
#Loop through the data set
for (i in 1:nrow(gift_data)) {
  print(paste("The average cost of a", 
              gift_data$gift_type[i], 
              "gift is", 
              gift_data$gift_cost[i], 
              "dollars."))
}

#6
#Calculate the mean
mean(gift_data$gift_cost)

#7
#Calculate the median
median(gift_data$gift_cost)

#8
#Calculate the standard deviation
sd(gift_data$gift_cost)

#9
#Convert data to numeric
gift_data$gift_cost <- as.numeric(gift_data$gift_cost)

#10
#Fit a linear model
model <- lm(gift_data$gift_cost ~ gift_data$gift_type)

#11
#Evaluate the model
summary(model)

#12
#Draw a scatter plot
ggplot(data = gift_data,
       aes(x = gift_type, 
           y = gift_cost)) +
  geom_point() +
  geom_smooth(method = lm) +
  ylab("Gift Cost ($)") +
  xlab("Gift Type") +
  ggtitle("Average Gift Cost")

#13
#Write a function
gift_function <- function(cost){
  if (cost > 40) {
    print("The gift should be a donation.")
  } else if (cost > 30) {
    print("The gift should be jewelry.")
  } else if (cost > 25) {
    print("The gift should be a gift card.")
  } else if (cost > 20) {
    print("The gift should be concert tickets.")
  } else if (cost > 15) {
    print("The gift should be sports gear.")
  } else if (cost > 10) {
    print("The gift should be flowers.")
  } else {
    print("The gift should be a book.")
  }
}

#14
#Test the function
gift_function(cost = 25)

#15
#Create a for loop
total_cost <- 0
for (i in 1:nrow(gift_data)) {
  total_cost <- total_cost + gift_data$gift_cost[i]
  gift_function(cost = total_cost)
}

#16
#Create a vector
gift_vector <- c(10, 15, 20, 25, 30, 35, 40)

#17
#Create a loop
total_vec_cost <- 0
for (i in 1:length(gift_vector)) {
  total_vec_cost <- total_vec_cost + gift_vector[i]
  gift_function(cost = total_vec_cost)
}

#18
#Create an interactive plot
library(shiny)
ui <- shinyUI(fluidPage(
  titlePanel("The Gift of Giving"), 
  sidebarLayout(
    sidebarPanel(
      sliderInput("gift_cost",
                  "Gift Cost Range:",
                  min = 10,
                  max = 40,
                  value = c(10, 20))
    ),
    mainPanel(
      plotOutput("giftPlot")
    )
  )
))

server <- shinyServer(function(input, output) {
  output$giftPlot <- renderPlot({
    ggplot(data = gift_data,
           aes(x = gift_type,
               y = gift_cost)) +
      geom_bar(stat = "identity", 
               aes(fill = gift_cost)) +
      geom_hline(yintercept = input$gift_cost[1], 
                 color = "red", 
                 linetype="dashed") +
      geom_hline(yintercept = input$gift_cost[2], 
                 color = "blue", 
                 linetype="dashed") +
      ylab("Gift Cost ($)") +
      xlab("Gift Type") +
      ggtitle("Average Gift Cost")
  })
})

shinyApp(ui = ui, server = server)

#19
#Call the app
runApp("Gift_Giving_App.R")

#20
#End the scene
print("The Ultimate Gift? Giving of yourself.")