new item - HelloMavenCI 
Freestyle project
SCM - URL 
Build - add build step - Execute shell
/usr/bin/mvn clean package
Build - add build step - Execute shell again
ansible-playbook -i hosts.ini deploy.yml

Click "Add post-build action" and select "Archive the artifacts".
Files to Archive: Type: target/*.jar
SAVE
BUILD NOW

Open file explore and verify that the artifact has been copied to the destination directory (e.g., /var/lib/jenkins/deployment/
