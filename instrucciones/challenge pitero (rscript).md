# Consejo

por recomendacion del precioso autor se les recomienda recomendadamente leer y detallar las descripciones de sus datasets antes de empezar a realizar codigo para que puedan imaginarse mas o menos que quieren hacer y pensar como pueden hacerlo. *(no hagan codigo a lo loco gente plis)*

# **Primero**

**Carga y Vista Rápida**: Carga el dataset en R.

Para poder usar la ruta a la base de datos desde el repo se usa el siguiente codigo:

"library(readr)

Nombre_para_la_ruta <- "ruta\\del\\archivo\\local" # preguntenme porque se hace asi

Nombre-pa-la-tabla <- read_csv(Nombre_para_la_ruta)"

## **Ejemplo**

"library(readr)

ruta_BD_yutu <- "C:\\Users\\Usuario\\Documents\\fina-coqueteria\\data\\yutu_top_100.csv"

BD <- read_csv(ruta_BD_yutu)"

# **Prueba 1: cambios basicos y presentacion**

1. ¿Cuáles son las primeras 6 filas y la estructura (tipos de datos de las columnas) del dataset? Muestra estos resultados en tu documento.

2. Cambia los títulos de al menos dos columnas para que sean más descriptivos y utiliza solo minúsculas y guiones bajos (por ejemplo, de col_1 a edad_participante).

3. Primer Resumen del Conjunto de Datos: Incluye un pequeño párrafo introductorio en tu presentación que describa de dónde proviene el dataset (inventalo) y cuántas filas y columnas tiene después de la limpieza de nombres.
 
# **Prueba 2: resumenes y graficos simples**

1. Escoge una variable cuantitativa (numérica) que te parezca interesante. Crea un resumen estadístico de esta variable (media, mediana, desviación estándar, cuartiles, etc.) e inclúyelo en tu presentación.

2. Utilizando la misma variable cuantitativa del punto anterior, realiza un gráfico apropiado para su distribución (por ejemplo, un histograma o un boxplot). Asegúrate de que el gráfico tenga un título claro y etiquetas en los ejes.

3. Selecciona una variable cualitativa (categórica o factor) y calcula la tabla de frecuencias (cuántas veces aparece cada categoría). ¿Cuál es la categoría más común?

# **Prueba 3: desarrollo y conclusiones**

1. Utiliza la variable cualitativa del punto anterior y crea un gráfico de barras o de pastel que muestre la distribución de las categorías.

2. Filtra el dataset para incluir solo las filas que cumplen una condición específica (por ejemplo, edad >30, o una categoría específica). Luego, calcula la media de una variable cuantitativa dentro de ese subconjunto de datos.

3. Crea un gráfico de dispersión (scatter plot) o un gráfico de barras apiladas (dependiendo de los tipos de variables) para visualizar la relación entre dos variables. ¿Observas alguna tendencia o patrón interesante entre ellas?

4. Finaliza tu presentación con una sección de Conclusiones. Escribe tres insights (hallazgos clave) que hayas descubierto durante tu análisis y que consideres más importantes.

# **Regalando puntos**

1. Usa la función class() para determinar qué tipo de objeto es tu dataset después de cargarlo (por ejemplo, data.frame, tibble, matrix).

2. Muestra un listado completo con los nombres de todas las columnas del dataset.

3. ¿Cuál es el tipo de dato (integer, character, factor, etc.) de la primera columna y de la última columna? Muestra los comandos utilizados para verificarlo.

4. Muestra en tu documento solo el contenido de la primera columna de tu dataset (sin el resto de las columnas).

5. Usa una función simple para indicar cuántas filas (observaciones) tiene el dataset en total.

6. Muestra la estructura condensada del dataset usando la función str() o glimpse()

7. Muestra solo la primera fila (la primera observación o registro) de tu dataset.