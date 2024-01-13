pipeline {
    agent any

    stages {
        stage('Check Tag Push') {
            when {
                expression {
                    def gitRef = env.GIT_REF
                    def isTagPush = gitRef != null && gitRef.startsWith('refs/tags/')
                    echo "GIT_REF: ${gitRef}, isTagPush: ${isTagPush}"
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

