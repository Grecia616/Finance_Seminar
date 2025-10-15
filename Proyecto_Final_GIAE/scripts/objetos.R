# 1. Cargar libreria
library(readxl) # Leer excel
library(dplyr) # tidyverse


# 2. Cargar base de datos "capital neto" de excel
# Nota: No agregamos rangos de selección porque limpiamos la base de excel a priori 
datos <- read_xlsx(path = "data/CAPITAL_NETO.xlsx",
                   sheet = 2)

# 2.1 Ver datos
names(datos)

# 3. Espeficar fecha
datos <- datos %>%
  mutate(
    fecha = if (is.numeric(fecha)) {
      as.Date(fecha, origin = "1899-12-30")
    } else {
      as.Date(as.character(fecha),
              tryFormats = c("%d/%m/%Y", "%Y-%m-%d"))
    },
    concepto = as.integer(concepto)
  )

# Fecha objetivo
fecha_obj <- as.Date("2012-12-31")
