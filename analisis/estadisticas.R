
# Script con error intencional para el ejercicio de recuperación

df <- read.csv("data/raw/datos_sinteticos.csv")

promedio_x <- mean(df$x)

print(promedio_x)