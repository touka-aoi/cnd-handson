terraform {
  required_version = "~> 1.13.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.11.0"
    }
  }

  backend "gcs" {
    bucket = "touka-tfstate"
    prefix = "cnd-handson"
  }
}

provider "google" {
  project = local.gcp_project_id
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

locals {
  gcp_project_id = "touka-dev"
}















// c4-standard-4が欲しいので立てる
// sshはgoogel CLIからできるのでする ( 鍵を生成しない )
// セキュリティーグループはいる
// ingressを許すポートは 22 80 443 8080 8443 18080 18443 28080 28443
// /dev/sda1で50GB
// tagはcnd-handson-vm

// VMイメージ.Packerで作るか
// ```
// sudo apt-get update
// sudo apt-get install -y curl vim git unzip gnupg lsb-release ca-certificates dstat jq
// curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
// echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
// sudo apt-get update
// sudo apt-get install -y docker-ce docker-ce-cli containerd.io
// ``` 
// この辺やるのだるい

// YOUR_VM_IP_ADDRESS    hello-world.vm08.handson.cloudnativedays.jp
// ホストマシンで解決するらしい
// ほかにいい方法ないすか