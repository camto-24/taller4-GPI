# Funciones de simulación

simular_datos <- function(n = 200, seed = 123) {
  set.seed(seed)

  x <- runif(n, 0, 10)
  y <- 2 * x + rnorm(n, 0, 1)

  data.frame(
    id = seq_len(n),
    x = x,
    y = y
  )
}