
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
