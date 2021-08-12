# Cinnabar PPA

## Install
```
curl https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar-archive-keyring.deb -o /tmp/cinnabar-archive-keyring.deb && sudo dpkg -i /tmp/cinnabar-archive-keyring.deb && rm /tmp/cinnabar-archive-keyring.deb
```


Alternate Way
```
curl -s --compressed "https://cinnabar-engine.github.io/cinnabar-ppa/KEY.gpg"  | sudo tee /usr/share/keyrings/cinnabar-archive-keyring.gpg
sudo curl -s --compressed -o /etc/apt/sources.list.d/cinnabar.list "https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar.list"
sudo apt update
```
