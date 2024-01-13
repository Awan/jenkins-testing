pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    echo "BRANCH_NAME: ${env.BRANCH_NAME}"
                    return env.BRANCH_NAME?.startsWith('refs/tags/')
                }
            }
            steps {
                echo 'Tag pushed'
            }
        }
    }
}

