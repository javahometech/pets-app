pipeline{
   agent any
   tools {
    maven 'maven3'
   }
   stages{
	
	stage('Maven Build/Package'){
		steps{
			sh 'mvn clean package'
		}
	}
   
   }
}
