# Cinnabar PPA

## Install
```
curl -s --compressed "https://cinnabar-engine.github.io/cinnabar-ppa/key.gpg"  | sudo tee /usr/share/keyrings/cinnabar-archive-keyring.gpg
sudo curl -s --compressed -o /etc/apt/sources.list.d/cinnabar.list "https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar.list"
sudo apt update
```
