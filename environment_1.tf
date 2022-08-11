provider "google" {
  project = "filipsdirtytests4"
  region = "us-central1"
}


resource "google_composer_environment" "tf_created" {
  name   = "tfcreated"
  region = "us-central1"
  config {
    software_config {
        image_version = "composer-2.0.22-airflow-2.2.5"
    
        env_variables = {
            ENVIRONMENT_CODE_SCRIPT = "https://github.com/filipknapik/composer_test_env/blob/main/environment_1.tf"
        }
        
    }
  }

  
}
