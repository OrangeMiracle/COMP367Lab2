pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    def dockerfile = 'Dockerfile'
                    def dockerImage = 'my-docker-image'
                    def dockerRegistry = 'docker.io'
                    def dockerUser = 'my-docker-username'
                    def dockerPass = credentials('docker-hub-creds')
                    sh "docker build -t ${dockerImage} -f ${dockerfile} ."
                    sh "docker login -u ${dockerUser} -p ${dockerPass} ${dockerRegistry}"
                    sh "docker tag ${dockerImage} ${dockerRegistry}/${dockerUser}/${dockerImage}"
                    sh "docker push ${dockerRegistry}/${dockerUser}/${dockerImage}"
                }
            }
        }
    }
}
