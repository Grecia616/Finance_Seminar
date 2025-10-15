# 1. Cargar libreria
library(readxl) # Leer excel
library(dplyr) # tidyverse


# 2. Cargar base de datos "capital neto" de excel
# Nota: No agregamos rangos de selección porque limpiamos la base de excel a priori 
datos <- read_xlsx(path = "data/CAPITAL_NETO.xlsx",
                   sheet = 2)
