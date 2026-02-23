# Script 02: análisis y procesamiento
dir.create("data/processed", recursive = TRUE, showWarnings = FALSE)

df <- read.csv("data/raw/datos_sinteticos.csv")

resumen <- data.frame(
  metrica = c("n", "x_mean", "y_mean", "x_sd", "y_sd"),
  valor = c(nrow(df), mean(df$x), mean(df$y), sd(df$x), sd(df$y))
)

write.csv(resumen, "data/processed/resumen.csv", row.names = FALSE)

message("OK: data/processed/resumen.csv generado")