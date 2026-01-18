pipeline {
  agent any

  stages {
    stage('Checkout Code') {
      steps {
        git branch: 'main', url: 'https://github.com/Bindu2309/Initial-project'
      }
    }

    stage('Run Log Monitor Script') {
      steps {
        sh '''
          chmod +x scripts/log_monitor.sh
          ./scripts/log_monitor.sh
        '''
      }
    }
  }

  post {
    always {
      archiveArtifacts artifacts: 'reports/*.txt', fingerprint: true
    }
  }
}

