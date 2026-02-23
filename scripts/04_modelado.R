# Script 04: modelado (regresión lineal simple)
# Usa datos sintéticos generados en fases anteriores

dir.create("results/tables", recursive = TRUE, showWarnings = FALSE)

df <- read.csv("data/raw/datos_sinteticos.csv")

# Modelo: y ~ x
modelo <- lm(y ~ x, data = df)
s <- summary(modelo)

# Tabla con resultados principales
resultados <- data.frame(
  termino = rownames(s$coefficients),
  estimacion = s$coefficients[, 1],
  error_std = s$coefficients[, 2],
  t_value = s$coefficients[, 3],
  p_value = s$coefficients[, 4]
)

write.csv(resultados, "results/tables/resultados_modelo.csv", row.names = FALSE)

# Métricas simples
metricas <- data.frame(
  metrica = c("n", "r2", "r2_ajustado", "sigma"),
  valor = c(nrow(df), s$r.squared, s$adj.r.squared, s$sigma)
)

write.csv(metricas, "results/tables/metricas_modelo.csv", row.names = FALSE)

message("OK: resultados_modelo.csv y metricas_modelo.csv generados en results/tables")