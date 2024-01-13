pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    def isTagPush = env.CHANGE_ID != null
                    echo "CHANGE_ID: ${env.CHANGE_ID}, isTagPush: ${isTagPush}"
                    return isTagPush
                }
            }
            steps {
                echo 'Tag pushed'
            }
        }
    }
}

