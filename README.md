# CI/CD Pipeline con Jenkins y Docker

Este repositorio contiene la configuración de un pipeline de integración y despliegue continuo (CI/CD) desarrollado en Jenkinsfile para automatizar el ciclo de vida de una aplicación.

## Tecnologías Utilizadas
- **Jenkins:** Automatización de stages (Checkout, Build, Deploy).
- **Docker:** Creación de imágenes y despliegue en contenedores.
- **Groovy / Jenkinsfile:** Definición del pipeline como código (Pipeline as Code).

## Flujo del Pipeline
1. **Checkout:** Clona la versión más reciente del repositorio.
2. **Build:** Construye la imagen Docker (`restaurante-app`).
3. **Deploy:** Detiene contenedores previos y despliega la nueva versión expuesta en el puerto `8081`.
