pipeline {
    agent any

    stages {
        stage('Checkout'){
            steps{
                git branch: 'main', credentialsId: '3ae0a1e8-809c-459e-857c-b9435c486b36', url: 'https://github.com/OrangeMiracle/COMP367Lab2'
            }
        }  
        stage('Build') {
            steps {
                // Clone the repository
                git url: 'https://github.com/OrangeMiracle/COMP367Lab2.git', branch: 'main'
                
                // Change to the Maven project directory
                dir('MavenWebApp/demo') {
                    // Build the Maven project
                    bat 'mvn clean install'
                    bat 'mvn jetty:run'
                }
            }
        }
    }
}
