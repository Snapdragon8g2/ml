sudo apt update
sudo apt upgrade -y

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install jenkins -y

sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
 open localhost:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

- **Maven Project:** [`https://github.com/devops-ds/your-maven-project.git`](https://github.com/devops-ds/your-maven-project.git)
- **Gradle Project:** [`https://github.com/devops-ds/your-gradle-project.git`](https://github.com/devops-ds/your-gradle-project.git)

Create item Maven-Github_freestyle
Freestyle project

source code management - url
build steps - execute shell - /usr/bin/mvn clean install
post build action - Publish Junit test - **/target/surefire-reports/*.xml - save
build now 

Enter an item name (e.g., Maven-GitHub-Pipeline
2. Enter an item name (e.g., `Maven-GitHub-Pipeline` or `Gradle-GitHub-Pipeline`).
3. Select "Pipeline".
1. Scroll down to the "Pipeline" section.
2. Under "Definition", select **"Pipeline script"**.
pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/devops-ds/your-maven-project.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                sh '/usr/bin/mvn clean package' 
            }
        }

        stage('Test') {
            steps {
                echo 'Tests are typically run during the Build stage with Maven.'
            }
        }
    }
    post {
        always {
            junit '**/target/surefire-reports/*.xml'
        }
        success {
            echo 'Build and tests succeeded!'
        }
        failure {
            echo 'Build or tests failed.'
        }
    }
}


SAVE
RUN BUILD - TEST RESULTS












