# transform_data.R
# this function is created for the iris dataset build-in within R, it normalize the 4 meaures of the iris dataset for potentiall categorisation tasks


transform_data <- function(data, method = "scale") { 
  # Perform scale transformation
  data$Sepal.Length <- scale(data$Sepal.Length) # normalise Sepal.Length with scale
  data$Sepal.Width <- scale(data$Sepal.Width) # normalise Sepal.Length with scale
  data$Petal.Length <- scale(data$Petal.Length) # normalise Sepal.Length with scale
  data$Petal.Width <- scale(data$Petal.Width) # normalise Sepal.Length with scale
  return(data)
}

   