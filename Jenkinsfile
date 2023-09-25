pipeline{
  agent any
 
  environment{
    PATH= "/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin:$PATH"

  }
  stages{
    stage("git clone"){
 steps{
    git branch: 'main', credentialsId: '8960bd4c-138b-4693-9465-fd48ef42d703', url: 'https://github.com/ysivasai99/DevOps.git' 
 }
}

stage("Maven Build"){
 steps{
   sh "mvn -f /var/lib/jenkins/workspace/Pipeline/Maven/webpage_feture/pom.xml clean sonar:sonar package"
 }
}
  }
 }
