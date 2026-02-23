# Script 01: simulación de datos
source("src/simulacion.R")

dir.create("data/raw", recursive = TRUE, showWarnings = FALSE)

df <- simular_datos(n = 200, seed = 123)
write.csv(df, "data/raw/datos_sinteticos.csv", row.names = FALSE)

message("OK: data/raw/datos_sinteticos.csv generado")