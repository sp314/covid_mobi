# Establish initial url for data
library(tidyverse)
prefix = "https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_"
months = str_pad(c(1:12), 2, pad = "0")

# Initialize each collection of dataframes
rides_19_q1 <- data.frame()
rides_19_q2 <- data.frame()
rides_19_q3 <- data.frame()
rides_19_q4 <- data.frame()
rides_20_h1 <- data.frame()

# Loop through each quarter of 2019 and attach the data set
for (month in months[1:3]) {
	data_url = paste0(prefix, "2019", "-", month, ".csv")
	print(paste0("reading data from: ", data_url))
	rides = read_csv(file = data_url) %>%
		select(tpep_pickup_datetime, tpep_dropoff_datetime, passenger_count, trip_distance, PULocationID, DOLocationID)
	
	rides_19_q1 <- rbind(rides_19_q1, rides)
}

for (month in months[4:6]) {
	data_url = paste0(prefix, "2019", "-", month, ".csv")
	print(paste0("reading data from: ", data_url))
	rides = read_csv(file = data_url) %>%
		select(tpep_pickup_datetime, tpep_dropoff_datetime, passenger_count, trip_distance, PULocationID, DOLocationID)
	
	rides_19_q2 <- rbind(rides_19_q2, rides)
}

for (month in months[7:9]) {
	data_url = paste0(prefix, "2019", "-", month, ".csv")
	print(paste0("reading data from: ", data_url))
	rides = read_csv(file = data_url) %>%
		select(tpep_pickup_datetime, tpep_dropoff_datetime, passenger_count, trip_distance, PULocationID, DOLocationID)
	
	rides_19_q3 <- rbind(rides_19_q3, rides)
}

for (month in months[10:12]) {
	data_url = paste0(prefix, "2019", "-", month, ".csv")
	print(paste0("reading data from: ", data_url))
	rides = read_csv(file = data_url) %>%
		select(tpep_pickup_datetime, tpep_dropoff_datetime, passenger_count, trip_distance, PULocationID, DOLocationID)
	
	rides_19_q4 <- rbind(rides_19_q4, rides)
}


# Loop through each month of 2020 and attach the data set
for (month in months[1:6]) {
	data_url = paste0(prefix, "2020", "-", month, ".csv")
	print(paste0("reading data from: ", data_url))
	rides = read_csv(file = data_url) %>%
		select(tpep_pickup_datetime, tpep_dropoff_datetime, passenger_count, trip_distance, PULocationID, DOLocationID)
	
	rides_20_h1 <- rbind(rides_20_h1, rides)
}

# save(... = rides_19_q1, file = "data/rides_19_q1.RData")
# save(... = rides_19_q1, file = "data/rides_19_q2.RData")
# save(... = rides_19_q1, file = "data/rides_19_q3.RData")
# save(... = rides_19_q1, file = "data/rides_19_q4.RData")
# save(... = rides_19_q1, file = "data/rides_20_h1.RData")


