pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    def isTagPush = env.GIT_REF.startsWith('refs/tags/')
                    echo "GIT_REF: ${env.GIT_REF}, isTagPush: ${isTagPush}"
                    return isTagPush
                }
            }
            steps {
                echo 'Tag pushed'
                // Add your build steps for the tag here
            }
        }
    }
}

