pipeline{
  agent any

    environment{
    PATH= "/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin:$PATH"

  }
 
  stages{
   	
	 stage("Build the package using Maven"){
	  steps{
	    sh "mvn -f /var/lib/jenkins/workspace/Sample_pip/Maven/webpage_feture/pom.xml clean sonar:sonar package"
		}
	}
	
  }
 }
