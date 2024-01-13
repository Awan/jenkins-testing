pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    def isTagPush = env.TAG_NAME != null
                    echo "TAG_NAME: ${env.TAG_NAME}, isTagPush: ${isTagPush}"
                    return isTagPush
                }
            }
            steps {
                echo 'Tag pushed'
            }
        }
    }
}

