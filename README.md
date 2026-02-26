# Taller 4 - Gestión de Proyectos de Investigación (GPI)

Este repositorio contiene el desarrollo del flujo de trabajo para el Taller 4 del curso de Gestión de Proyectos de Investigación. El objetivo principal es implementar un sistema de análisis de datos reproducible que permita a terceros recrear los resultados de manera idéntica sin intervención de los autores originales.

## Flujo de Trabajo 

El proyecto sigue una estructura lógica dividida en fases de ejecución secuencial:

1. **Infraestructura**: Configuración del entorno reproducible mediante `renv.lock` y control de versiones con Git.
2. **Entrada de Datos (Stage I)**: Generación de datos sintéticos o carga de datos crudos. Se incluye una lógica de decisión para reconstruir datos o utilizar versiones ya existentes para optimizar el tiempo.
3. **Procesamiento (Stage II)**: Limpieza automatizada mediante scripts, eliminando cualquier intervención manual en los archivos de datos.
4. **Análisis y Modelado (Stage III)**: Estimación de modelos estadísticos y generación de perfiles de resultados.
5. **Visualización y Reporte**: Creación de gráficos y tablas finales para el documento de cierre.

## Estructura del Repositorio

El proyecto se organiza de forma modular para separar la lógica de ejecución de las funciones reutilizables:

```text
taller4-GPI/
├── README.md                 # Documentación y proveniencia de datos
├── transcript_taller_4.txt    # Registro de actividad
├── analisis/
│   └── estadisticas.R        # Exploración inicial de datos
├── data/
│   ├── raw/                  # Datos crudos o sintéticos originales
│   └── processed/            # Datos limpios y procesados
├── results/
│   ├── figures/              # Gráficos y visualizaciones finales
│   └── tables/               # Resultados del modelo y tablas resumen
├── scripts/                  # Scripts de ejecución secuencial (01 a 04)
│   ├── 01_simulacion.R
│   ├── 02_analisis.R
│   ├── 03_visualizacion.R
│   └── 04_modelado.R
└── src/                      # Funciones generales y personalizadas
    ├── simulacion.R
    └── utilidades.R
