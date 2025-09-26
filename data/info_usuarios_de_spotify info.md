# Sobre el Conjunto de Datos

**Propósito**: Predecir si un usuario de Spotify se dará de baja (cancelará la suscripción) o permanecerá activo.

## Filas:
 Cada fila representa un usuario único de Spotify.

## Columnas (Características):

- user_id → Identificador único para cada usuario

- gender → Género del usuario (Hombre/Mujer/Otro)

- age → Edad del usuario

- country → Ubicación del usuario

- subscription_type → Tipo de suscripción de Spotify (Gratuita, Premium, Familiar, Estudiante)

- listening_time → Minutos dedicados a escuchar por día

- songs_played_per_day → Número de canciones reproducidas diariamente

- skip_rate → Porcentaje de canciones saltadas

- device_type → Dispositivo utilizado (Móvil, Escritorio, Web)

- ads_listened_per_week → Número de anuncios escuchados por semana

- offline_listening → Minutos de escucha sin conexión

- is_churned → Variable objetivo (0 = Activo, 1 = Dado de baja)

## **Tipo de Conjunto de Datos**:
 Mixto (numérico + categórico)

## **Caso de Uso**: 
Construir modelos de aprendizaje automático para predecir la cancelación de usuarios, analizar los patrones de participación y ayudar a Spotify a reducir las bajas.