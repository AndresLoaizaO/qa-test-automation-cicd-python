pipeline {
    agent any

    stages {

        stage('Clonar repositorio') {
            steps {
                echo 'Clonando el código desde GitHub'
                checkout scm
            }
        }

        stage('Construir imagen Docker') {
            steps {
                echo 'Construyendo imagen Docker del sistema de restaurante'
                bat 'docker build -t restaurante-app .'
            }
        }

        stage('Desplegar aplicación') {
            steps {
                echo 'Desplegando contenedor Docker'
                bat '''
                docker stop restaurante-contenedor || exit 0
                docker rm restaurante-contenedor || exit 0
                docker run -d -p 8081:80 --name restaurante-contenedor restaurante-app
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline ejecutado correctamente. Aplicación desplegada.'
        }
        failure {
            echo 'Error en la ejecución del pipeline.'
        }
    }
}
