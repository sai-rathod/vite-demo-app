pipeline{
    agent any
    stages{
        stage("fetch"){
            steps{
                echo "fetching the frontend code"
                git url:"https://github.com/sai-rathod/vite-demo-app.git",branch:"main"
            }
        }
        stage("install-deps"){
            steps{
                echo "installing the dependencies"
                sh "npm install"
                echo "installation completed"
            }
        }
        stage("lint"){
            steps{
                echo "linting the code if present"
                sh "npm run lint || true"
            }
        }
        stage("test"){
            steps{
                echo "running the written test cases"
                sh "npm run test"
            }
        }
        stage("deploy"){
            steps{
                echo "deploying on local"
                sh "nohup npm run dev &"
            }
        }
    }
}
