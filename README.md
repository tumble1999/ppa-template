# Cinnabar PPA
Created from: https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html

## Install
```
curl -s --compressed "https://cinnabar-engine.github.io/cinnabar-ppa/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/cinnabar.list "https://cinnabar-engine.github.io/cinnabar-ppa/cinnabar.list"
sudo apt update
```

## Add Packages
Add the deb files into the folder and then.
```
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "tumblegamer@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "tumblegamer@gmail.com" --clearsign -o - Release > InRelease
```
