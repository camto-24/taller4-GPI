# Script 02: análisis y procesamiento
dir.create("data/processed", recursive = TRUE, showWarnings = FALSE)

# Importar datos directamente desde Zenodo
# DOI: 10.5281/zenodo.18891505
url <- "https://zenodo.org/records/18891505/files/datos_sinteticos.csv?download=1"
df <- read.csv(url)

resumen <- data.frame(
  metrica = c("n", "x_mean", "y_mean", "x_sd", "y_sd"),
  valor = c(nrow(df), mean(df$x), mean(df$y), sd(df$x), sd(df$y))
)

write.csv(resumen, "data/processed/resumen.csv", row.names = FALSE)

message("OK: data/processed/resumen.csv generado")
