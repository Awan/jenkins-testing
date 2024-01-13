pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    def isTagPush = env.GIT_BRANCH?.startsWith('refs/tags/')
                    echo "BRANCH_NAME: ${env.BRANCH_NAME}, GIT_BRANCH: ${env.GIT_BRANCH}, isTagPush: ${isTagPush}"
                    return isTagPush
                }
            }
            steps {
                echo 'Tag pushed'
            }
        }
    }
}

