pipeline{
    agent any
    triggers {
        githubPush()
    }
    // githubPush() trigger demo
    tools {
        maven 'maven3'
    }
    stages{
        // build only ones i.e. in dev branch
        stage('Build'){
            when {
                branch 'dev'
            }
            steps{
                sh "mvn clean package"
            }
        }
        // upload war file to nexus i.e. only ones in dev branch
        stage('Upload to Nexus'){
            when {
                branch 'dev'
            }
            steps{
                echo "uploading war to nexus"
            }
        }
        stage('Deploy to dev'){
            when {
                branch 'dev'
            }
            steps{
                echo "deploying to dev environment"
            }
        }
        stage('Deploy to staging'){
            when {
                branch 'staging'
            }
            steps{
                echo "deploying to staging environment"
            }
        }

        stage('Deploy to prod'){
            when {
                branch 'master'
            }
            steps{
                echo "deploying to production environment"
            }
        }
    }
}
