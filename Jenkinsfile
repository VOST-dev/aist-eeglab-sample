pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "wget -O ${env.OPTION_FILE_NAME} ${env.OPTION_FILE_URL}"
                sh "wget -O ${env.DATA_FILE_NAME} ${env.DATA_FILE_URL}"
                sh 'matlab \'run("ica")\''
                archiveArtifacts artifacts: '/tmp/result.mat', followSymlinks: false
            }
        }
    }
}