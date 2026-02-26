# Taller 4 - Gestión de Proyectos de Investigación (GPI)

Este repositorio contiene el desarrollo completo del flujo de trabajo implementado para el Taller 4 del curso de Gestión de Proyectos de Investigación. El proyecto sigue una estructura modular y organizada por fases, incluyendo simulación, procesamiento, modelado y visualización de datos sintéticos.

## Estructura del repositorio

taller4-GPI/

├── README.md

├── transcript\_taller\_4.txt

├── analisis/

│ └── estadisticas.R

├── data/

│ ├── raw/

│ │ └── datos\_sinteticos.csv

│ └── processed/

│ └── resumen.csv

├── results/

│ ├── figures/

│ │ └── scatter\_xy.png

│ └── tables/

│ ├── primeras\_20\_filas.csv

│ ├── resultados\_modelo.csv

│ └── metricas\_modelo.csv

├── scripts/

│ ├── 01\_simulacion.R

│ ├── 02\_analisis.R

│ ├── 03\_visualizacion.R

│ └── 04\_modelado.R

└── src/

├── simulacion.R

└── utilidades.R


## Flujo de trabajo


El proyecto está organizado en fases:


1\. \*\*Simulación\*\*: Generación de datos sintéticos.

2\. \*\*Análisis\*\*: Procesamiento y estadísticas descriptivas.

3\. \*\*Visualización\*\*: Creación de gráficos y tablas.

4\. \*\*Modelado\*\*: Estimación de un modelo de regresión lineal y exportación de métricas.

La separación entre `src/` y `scripts/` permite mantener funciones reutilizables independientes de los scripts de ejecución, siguiendo buenas prácticas de modularidad y reproducibilidad.




