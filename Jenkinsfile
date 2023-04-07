pipeline{
     agent any
     stages{
     stage('checkout'){
        steps{
        git branch:"main",url:'https://github.com/PRANIT262/AppointmentService.git'
        
        }
         }
         stage('Build'){
            steps{
            sh 'chmod a+x mvnw'
            sh './mvnw clean package -DskipTests=true'
            }
          post{
          always{
          archiveArtifacts 'target/*.jar'
          }
          }
         }
         stage(DockerBuild){
         steps{
         sh 'docker build -t pranit262/g3-appointment-service:appointment-service .'
         }
         }
         
     }
}