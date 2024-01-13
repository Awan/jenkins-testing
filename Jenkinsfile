pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    return env.BRANCH_NAME != null && env.BRANCH_NAME.startsWith('refs/tags/')
                }
            }
            steps {
                echo 'Tag pushed'
            }
        }
    }
}

