# Estrategia Prueba final

## En este repositorio se encuentra la estrategía de pruebas final y la implementación de la semana #1

# Requisitos:

- Node
- Ghost 3.41.1 y 4.44.0
- Tener un usuario registrado en el aplicativo ghost

# Pasos para correr los escenarios de pruebas:

- Clonar el repositorio en su equipo local, git clone https://github.com/lsochoa2023/final-automatizadas.git
- Ejecutar **npm install kraken-node -g**, esto instalara dos librerias necesarias para correr los escenarios con kraken.
- Ejecutar **npm install kraken-node**
- Ejecutar **npm install -g appium**
- instalar **npm install csv-parser**
- instalas **npm install axios**
- Revisar la version de cucumber que utiliza kraken(7.2.1)
  y ejecutar **npm install -g @cucumber/cucumber@7.2.1** y **npm install @cucumber/cucumber@7.2.1**
- Moficar las variables del archivo **properties.json** de acuerdo a su entorno y preferencia, pero como requitos: **USERNAME1**, **PASSWORD1**, y al igual que se debe cambiar el puerto en las variables que aplique por el puerto donde esté corriendo GHOST.
- Para ejacutar cada escenario se debe arrastrar a la carpeta **features** y posteriormente regresarlo a medida que no requiera ejecutarlo.

- Ejecutar el comando **npx kraken-node run**, esto ejecutar el escenario correspondiente.

# Instrucciones para ejecutar las pruebas de regresión visual

```bash
npm install
npm test
```

# **Actividad final**

## Estrategia de pruebas final

La encuentra dentro del proyecto en la carpeta **Estrategia-Pruebas**

A continuación se describe la forma en que se ejecutó la semana 1 de la **Estrategía final de Pruebas**, donde se trabajaron las funcionalidades Hacer Login, Crear Post y Recuperar password (implementados con 11 escenarios):

## ESCENARIOS:

- **1** Hacer Login con credenciales correctas
- **2** Hacer Login con email sin formato y password correcto
- **3** Hacer Login con email correcto y password vacío
- **4** Hacer Login con email vacío y password correcto
- **5** Hacer Login con credenciales vacias
- **6** Crear Post con título y detalle
- **7** Crear Post con título y sin detalle
- **8** Crear Post sin título y con detalle
- **9** Crear Post con título vacío y detalle vacío
- **10** Recuperar contraseña con el email correcto
- **11** Crear Post con título de más de 500 caracteres

# Pruebas exploratorias manuales y de reconocimiento con Ripper

- Para las pruebas manuales exploratorias ver el siguiente enlace: [Inventario de pruebas Exploratorias](https://github.com/lsochoa2023/final-automatizadas/wiki/Inventario-Pruebas-Exploratorias)

- Para las pruebas de reconocimiento con Ripper dentro del proyecto se encuentra la carpeta **Reconocimiento-Ripper**

# Pruebas E2E con Kraken

- Dentro del proyecto se encuentran 10 escenarios en la carpeta **kraken-E2E**, probando las funcionalidades: Crear post, Iniciar sesión y Recuperar contraseña

# Pruebas de Regresión Visual con ResembleJS

- Aqui se hace la comparación de las verisones 3.41.1 y 4.44.0 de GHOST

- Dentro del proyecto se encuentra la carpeta **Resembl** con el proyecto de pruebas de regresión visual. Dentro de la carpeta **screenshots** hay 3 carpetas con los siguientes propositos:

- La carpeta **GHOST-3-41-1** contine las carpetas con screenshots por funcionalidad de la versión anterior de ghost.
- La carpeta **GHOST-4-44-0** contine las carpetas con screenshots por funcionalidad de la versión a comparar de ghost.
- La carpeta **compare** es el resultado de la comparación de los screenshot de cada una de las funcionalidades de cada versión de GHOST.

- CONCLUSION:

# Pruebas con escenarios de validación de datos a través de APIs

- Se trabaja con la versión 4.44.0 de Ghost

# Las carpetas estan divididas segun la estrategia de generación de datos(Se utilizaron las 3 estrategías):

## all_feature/aleatorio-faker :

- En esta carpeta se encuentran los escenarios que se le aplicacan la estrategia aleatoria con la libreria de faker
- Dentro de cada uno de los pasos se hace el llamado a la librería de faker con campos aleatorios.

* login.feature (Escenario que permite realizar login con email y contraseña incorrecta)
* createPost.featur (Escenario para Crear Post con título y detalle aleatorio)
* login-noPass (Escenario para hacer login con password incorrecto)

## all_feature/mockaroo :

- En esta carpeta se encuentran los escenarios que se utiliza la estrategía con API de Mockaroo, la cual fue creada previamente.

* createPost (Crea Post utilizando API de Mockaroo)

## all_feature/mockara-priori :

- En esta carpeta se encuentran los escenarios que utilizan la estrategia de a-priori utilizando us csv de Mockaroo que fué creada previamente y con escenarios outline.

* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar email y password correstos
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar ambos incorrectos
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar el email correcto y password incorrecto
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar emil incorrecto y password incorrecto
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar emil vacio y passwor incorrecto
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar emil incorrecto y password vacio
* login (Escenario que consume un csv de Mockarro, cada vez que se ejecuta toma un valor aleatorio del scv) puede tomar emil formato incorrecto y password vacio

## all_feature/escenarios-aleatorios :

-En esta carpeta se encuentran los escenarios que utilizan la estrategia de escenarios aleatorios. Estos realizan una accion aleatoria cada que se ejecutan:

- navegacion (Escenario que permite navegar entre las paginas Post, Page, tags y members de forma aleatoria cada vez ue ejecutas el escenario)

# VENTAJAS Y DESVENTAJAS DEL PROCEDO DE PRUEBAS:

- En el siguiente link: [Ventajas](https://github.com/lsochoa2023/final-automatizadas/wiki/ventajas-desventajas-proceso-pruebas)

# Integrantes:

- Luz Stella Ochoa Marin (ls.ochoa@uniandes.edu.co)

## IMPORTANTE!! envie un correo al profesor Mario el día martar 23 de mayo, donde solicitaba continuar trabajando sola, debido a la irresponsabilidad de mi compañero de grupo en las 2 anteriores entregas(Practicamente me tocó realizar el trabajo sola). Pero al parecer el profesor no logro ver mi correo a tiempo y me calificaron la anterior entrega con él, que realmente no se la merecía.

--------- HASTA AQUI
