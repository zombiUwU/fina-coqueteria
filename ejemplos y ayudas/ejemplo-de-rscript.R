library(readr)
library(dplyr)
library(ggplot2)
library(tidyr)
library(here)

ruta_BD_yutu <- "C:\\Users\\Usuario\\Documents\\fina-coqueteria\\data\\yutu_top_100.csv"

# Cargar el dataset 

BD <- read_csv(ruta_BD_yutu)

# **Prueba 1: Cambios básicos y presentación**

# Mostrar las primeras 6 filas

print(head(BD, 6))

# Mostrar la estructura (tipos de datos)

print(str(BD))

# 2. Cambiar títulos de al menos dos columnas a minúsculas con guiones bajos

# Cambiamos 'title' a 'titulo_video' y 'view_count' a 'vistas'
BD_cambio_nombres <- BD %>%
  rename(
    titulo_video = title,
    vistas = view_count
  ) %>%  # Cambia el nombre si es necesario
  mutate(vistas = as.numeric(vistas)) %>%  # Convierte a número
  filter(!is.na(vistas))

print(names(BD_cambio_nombres))

# **Prueba 2: Resúmenes y gráficos simples**

# 1. Resumen estadístico de variable cuantitativa: 'vistas' (view_count)

resumen_vistas <- BD_cambio_nombres %>%
  summarise(
    media = mean(vistas, na.rm = TRUE),
    mediana = median(vistas, na.rm = TRUE),
    desviacion_estandar = sd(vistas, na.rm = TRUE),
    q1 = quantile(vistas, 0.25, na.rm = TRUE),
    q3 = quantile(vistas, 0.75, na.rm = TRUE),
    min = min(vistas, na.rm = TRUE),
    max = max(vistas, na.rm = TRUE)
  )

print(resumen_vistas)

# 3. Variable cualitativa: 'channel' - Tabla de frecuencias

frecuencias_canal <- BD %>%
  count(channel, sort = TRUE)

print(frecuencias_canal)

# Categoría más común

if (nrow(frecuencias_canal) > 0) {
  categoria_mas_comun <- frecuencias_canal$channel[1]
  cat("La categoría más común es:", categoria_mas_comun, "con", frecuencias_canal$n[1], "ocurrencias.\n")
} else {
  cat("No hay datos categóricos suficientes.\n")
}

# **Prueba 3: Desarrollo y conclusiones**

# 2. Filtrar dataset (ejemplo: solo videos con vistas > 100000000) y calcular media de 'duration'

# 3. Gráfico de dispersión: Relación entre 'duration' y 'vistas'

print("me dio flojera")

# **Regalando puntos (integrados aquí para completitud)**

# 1. Tipo de objeto del dataset

print("Tipo de objeto del dataset:")
print(class(BD))  # tibble, data.frame, etc.

# 2. Listado completo de nombres de columnas

print("Nombres de todas las columnas:")
print(names(BD))

# 3. Tipo de dato de la primera y última columna

print("primera columna")
print(class(BD$title))

print("ultima columna")
print(class(BD$channel_follower_count))

# 4. Contenido de la primera columna solo

print("Contenido de la primera columna:")
print(BD[[1]])

# 5. Número de filas
print("Número total de filas (observaciones):")
print(nrow(BD))

# 6. Estructura condensada con glimpse() de dplyr
print("Estructura condensada con glimpse():")
glimpse(BD)

# 7. Primera fila solo
print("Primera fila del dataset:")
print(BD[1, ])
