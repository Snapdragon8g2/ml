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

