![image](https://github.com/Awan/jenkins-testing/assets/42554663/4a59aa93-7cb0-4e26-9dfb-26a6bc15b36d)

# Jenkins file with docker commands

A simple Jenkinsfile which creates a docker image and runs it.

## Requirements

* Jenkins server with docker installed

```
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker docker.socket
```
* Jenkins user added to docker group

```
sudo usermod -a -G docker jenkins
sudo reboot -f
```

