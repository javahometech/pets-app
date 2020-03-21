pipeline{
   agent any
   parameters {
      booleanParam defaultValue: true, description: 'Do you wanna skip test cases?', name: 'skipTests'
      choice choices: ['dev','prod'], description: 'Choose env to deploy app', name: 'appEnv'
   }
   stages{
	
	   stage('Build'){
	   	steps{
	   		echo "building application"
	   	}
	   }

      stage('Deploy Dev'){
         // if appEnv is dev then execute this
         when{
            expression{
               params.appEnv == 'dev'
            }
         }
	   	steps{
	   		echo "Deploying to dev"
            echo "The Job Name is ${JOB_NAME} and build URL is ${BUILD_URL}"
	   	}
	   }

      stage('Deploy Prod'){
         // if appEnv is prod then execute this
         when{
            expression{
               params.appEnv == 'prod'
            }
         }
	   	steps{
	   		echo "Deploying to prod"
	   	}
	   }

   }

}
