
# Función para calcular estadísticas básicas de un vector numérico
estadisticas_basicas <- function(x) {
  if (!is.numeric(x)) {
    stop("El objeto proporcionado no es numérico.")
  }

  data.frame(
    media = mean(x, na.rm = TRUE),
    desviacion = sd(x, na.rm = TRUE),
    minimo = min(x, na.rm = TRUE),
    maximo = max(x, na.rm = TRUE),
    n = sum(!is.na(x))
  )
}
