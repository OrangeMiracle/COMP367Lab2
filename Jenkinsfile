pipeline {
    agent any

    stages {
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/OrangeMiracle/COMP367Lab2'
            }
        }  
        stage('Build') {
            steps {
                // Clone the repository
                git url: 'https://github.com/OrangeMiracle/COMP367Lab2.git', branch: 'main'
                
                // Change to the Maven project directory
                dir('MavenWebApp/demo') {
                    //构建镜像
                    bat 'docker login -u orangemiracle -p WRHkao100'
                    bat 'docker build -t orangemiracle/comp367lab3demo:demo .'
                    bat 'docker push orangemiracle/comp367lab3demo:demo'
                }
            }
        }
    }
}
