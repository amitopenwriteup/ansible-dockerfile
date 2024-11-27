pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile' // Specify the Dockerfile in the workspace
        }
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Ansible playbook repository
                git branch: 'main', url: 'https://github.com/amitopenwriteup/tfsource.git'
            }
        }
        stage('Run Ansible Playbook') {
            steps {
                // Run the Ansible playbook
                sh 'ansible-playbook -i inventory playbook.yaml'
            }
        }
    }
}


