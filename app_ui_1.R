

source("Server.R")

# Widget to select sport for weight chart 
sport_check_weight <- checkboxGroupInput(inputId = "Sport_Weight",
                                         label = "Sports",
                                         choices = c("Basketball", "Cycling", "Gymnastics",
                                                     "Swimming", "Tennis", "Weightlifting"),
                                         selected = c("Basketball", "Cycling", "Gymnastics",
                                                      "Swimming", "Tennis", "Weightlifting"))

# Widget to select sport for height chart 
sport_check_height <- checkboxGroupInput(inputId = "Sport_Height",
                                         label = "Sports",
                                         choices = c("Basketball", "Cycling", "Gymnastics",
                                                     "Swimming", "Tennis", "Weightlifting"),
                                         selected = c("Basketball", "Cycling", "Gymnastics",
                                                      "Swimming", "Tennis", "Weightlifting"))