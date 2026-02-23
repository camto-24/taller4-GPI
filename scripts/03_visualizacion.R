# Script 03: visualización y outputs
dir.create("results/figures", recursive = TRUE, showWarnings = FALSE)
dir.create("results/tables", recursive = TRUE, showWarnings = FALSE)

df <- read.csv("data/raw/datos_sinteticos.csv")

# Tabla: primeras 20 filas
write.csv(head(df, 20), "results/tables/primeras_20_filas.csv", row.names = FALSE)

# Figura: scatter simple (base R)
png("results/figures/scatter_xy.png", width = 800, height = 600)
plot(df$x, df$y, main = "Scatter x vs y", xlab = "x", ylab = "y", col = "darkred")
dev.off()

message("OK: outputs generados en results/")