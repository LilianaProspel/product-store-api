# Product Store Api 

## Prerrequisitos

- Java 11 ( Amazon Correto 11.0.23)
- Maven 3.9.6
- Intellij IDE CE
- Postman

## Ejecutar pruebas

- Opcion 1: Desde el panel Maven de Intellij, seleccionar la opcion `test`
- Opcion 2: Desde el archivo `ProductStoreTest` seleccionar la opcion `Run`

## Reportes

Luego de ejecutar las pruebas, se generara un reporte en la carpeta `target/karate-reports/karate-summary.html`

## CURLs de prueba

Los siguientes curls se pueden importar directamente en Postman para probar los servicios, o ejecutarlos desde la terminal.
Es importante tener en cuenta que los datos de prueba son ficticios y no se almacenan en la base de datos.
Asi mismo para probar cada escenario se deben manipular los datos de entrada.

> Login
``` bash
curl --location 'https://api.demoblaze.com/login' \
--header 'Content-Type: application/json' \
--data '{
    "username": "LilianaEstefanssia",
    "password": "ProspelQuishpe"
}'
```
> SignUp
``` bash
curl --location 'https://api.demoblaze.com/signup' \
--header 'Content-Type: application/json' \
--data '{
    "username": "LilianaEstefania",
    "password": "ProspelQuishpe"
}'
```