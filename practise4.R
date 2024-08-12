
# Define the function to simulate collecting all toys
collect_all_toys <- function() {
  # Define the probabilities for each type of toy
  probabilities <- c(Harry = 0.25, Dumbledore = 0.20, Hermione = 0.20,
                     Ron = 0.15, Neville = 0.10, Mcgonagall = 0.05, Dobby = 0.05)
  
  # Initialize the count of packets and collected toys
  num_packets <- 0
  collected_toys <- character()
  
  # Continue collecting toys until all types are collected
  while (length(collected_toys) < length(probabilities)) {
    # Draw a toy based on the probabilities
    drawn_toy <- sample(names(probabilities), size = 1, prob = probabilities, replace = TRUE)
    
    # Add the drawn toy to the list of collected toys if it's not already collected
    if (!drawn_toy %in% collected_toys) {
      collected_toys <- c(collected_toys, drawn_toy)
    }
    
    # Increment the number of packets
    num_packets <- num_packets + 1
  }
  
  # Return the number of packets needed to collect all toys
  return(num_packets)
}

# Set the number of simulations
num_simulations <- 1000

# Perform the simulations and calculate the average number of packets needed
results <- replicate(num_simulations, collect_all_toys())
average_packets <- mean(results)

# Print the average number of packets
print(average_packets)







simulate_vitamin_days <- function() {
  # Initialize the bottle with 100 whole tablets
  bottle <- c(rep("whole", 100))
  
  days <- 0
  
  while (TRUE) {
    # Draw a random item from the bottle
    draw <- sample(bottle, 1)
    
    if (draw == "half") {
      # If it's a half-tablet, take the vitamin and stop
      return(days)
    } else {
      # If it's a whole tablet, cut it in half
      bottle <- c(bottle, rep("half", 2))
      bottle <- bottle[bottle != "whole"]
    }
    
    days <- days + 1
  }
}

# Run the simulation multiple times to estimate the average number of days
num_simulations <- 10000
results <- replicate(num_simulations, simulate_vitamin_days())

# Calculate and print the average number of days
average_days <- mean(results)
print(average_days)
