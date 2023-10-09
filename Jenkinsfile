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
	
	 stage("Build the package using Maven"){
	  steps{
	    sh "mvn -f /var/lib/jenkins/workspace/Sample_pip/Maven/webpage_feture/pom.xml clean sonar:sonar package"
		}
	}
	stage("Nexus"){
	 steps{
	   nexusArtifactUploader artifacts: [[artifactId: 'webpage_feture', classifier: '', file: '/var/lib/jenkins/workspace/Sample_pip/Maven/webpage_feture/target/webpage_feture.war', type: 'war']], credentialsId: '8960bd4c-138b-4693-9465-fd48ef42d703', groupId: 'sample_project', nexusUrl: '54.227.127.136:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'nexusRepo', version: 'snap'
	   }
	   }
	   
  }
 }
