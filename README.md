# Cinnabar PPA

## Install
```
curl https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar-keyring.deb -o libeigen3-dev_3.3.2-1_all.deb && sudo dpkg -i cinnabar-keyring.deb && rm cinnabar-keyring.deb
```


Alternate Way
```
curl -s --compressed "https://cinnabar-engine.github.io/cinnabar-ppa/key.gpg"  | sudo tee /usr/share/keyrings/cinnabar-archive-keyring.gpg
sudo curl -s --compressed -o /etc/apt/sources.list.d/cinnabar.list "https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar.list"
sudo apt update
```
