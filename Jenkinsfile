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

stage("Maven Build and sonar"){
 steps{
   sh "mvn -f /var/lib/jenkins/workspace/Pipeline/Maven/webpage_feture/pom.xml clean sonar:sonar package"
 }
}
  }
    stage("Nexus uploader"){
      steps{
          nexusArtifactUploader artifacts: [[artifactId: 'webpage_feture', classifier: '', file: '/var/lib/jenkins/workspace/Pipeline/Maven/webpage_feture/target/webpage_feture.war', type: 'war']], credentialsId: 'nexus3', groupId: 'sample_project', nexusUrl: '100.25.198.184:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'Maven_Rel', version: 'snap'
      }
  }
 }
