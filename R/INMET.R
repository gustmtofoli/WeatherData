library(data.table)
library(lubridate)


data <- read.csv('/home/gustavo/Desenvolvimento/weatherdata/dados/janeiro_1980__janeiro_2018.csv')
names(data)

data_search <- subset(data, Data %like% '11/02')

summary(data_search)

data_search <- data_search[, c('Data', 'Hora', 'Precipitacao', 'TempMaxima', 'TempMinima')]

summary(data_search[, c('Precipitacao', 'TempMaxima', 'TempMinima')])