pipeline {
    agent { node { label 'master' } }
    
    stages {
		stage('Prepare Environment') {
			steps {
				script {
					sh(script: 'mkdir -p report')
				}
			}
		}
		stage('Smoke Tests') {
			steps {
				script {
				    sh(script: "cucumber --dry-run --format json --out report/${BUILD_ID}_Smoke.json")
				}
			}
		}
		stage('API Tests') {
			steps {
				script {
				    sh(script: "cucumber --dry-run --format json --out report/${BUILD_ID}_API.json")
				}
			}
		}
		stage('UI') {
			steps {
				script {
				    sh(script: "cucumber --dry-run --format json --out report/${BUILD_ID}_API.json")
				}
			}
		}
	        stage('Security') {
			steps {
				script {
				    sh(script: "cucumber --dry-run --format json --out report/${BUILD_ID}_API.json")
				}
			}
		}
    }
    
}
