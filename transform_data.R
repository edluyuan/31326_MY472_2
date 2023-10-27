# transform_data.R
# this function is created for the iris dataset build-in within R, it normalize the 4 meaures of the iris dataset for potentiall categorisation tasks
# we are giving this function with a method argument to choose the typeo of normalisation to use

transform_data <- function(data, method = "scale") { 
  # Perform scale transformation
  if (method == "scale") {
    # existing scaling
    data$Sepal.Length <- scale(data$Sepal.Length) # normalise Sepal.Length with scale
    data$Sepal.Width <- scale(data$Sepal.Width) # normalise Sepal.Length with scale
    data$Petal.Length <- scale(data$Petal.Length) # normalise Sepal.Length with scale
    data$Petal.Width <- scale(data$Petal.Width) # normalise Sepal.Length with scale
  } else if (method == "log") {
    # logarithmic transformation
    data$Sepal.Length <- log(data$Sepal.Length) # normalise Sepal.Length with log
    data$Sepal.Width <- log(data$Sepal.Width) # normalise Sepal.Length with log
    data$Petal.Length <- log(data$Petal.Length) # normalise Sepal.Length with log
    data$Petal.Width <- log(data$Petal.Width) # normalise Sepal.Length with log
  }
  
  return(data)
}