my_mean = function(input_array) {
  
  # Removes NA values
  # I had to do this because I want to use length() 
  # to calculate the denominator of the mean which 
  # does not allow na.rm to be entered
  j = 1
  x = vector()
  for (i in c(1:length(input_array))) {
    if (is.na(input_array[i]) == FALSE) {
      x[j] =input_array[i]
      j = j + 1
    }
  }
  
  # Calculates mean
  numerator = sum(x)
  denominator = length(x)
  answer = numerator/denominator
  
  return(answer)
  
  
}