mvn archetype:generate -DgroupId=com.example -DartifactId=HelloMaven -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
cd HelloMaven

gradle init
2
tree
gedit build.gradle


plugins {
    id 'application'
    id 'java-library' 
    id 'maven-publish' 
}

repositories {
    mavenLocal()
    maven {
        url = uri('https://repo.maven.apache.org/maven2/')
    }
}

dependencies {
    testImplementation libs.junit.junit
}

group = 'com.example'
version = '1.0-SNAPSHOT'
description = 'HelloMaven'
java.sourceCompatibility = JavaVersion.VERSION_1_8

application {
    mainClass = 'com.example.App' 
}
publishing {
    publications {
        maven(MavenPublication) {
            from(components.java)
        }
    }
}
gradle build
gradle run
