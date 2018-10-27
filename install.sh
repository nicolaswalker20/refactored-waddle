#!/bin/bash 
echo "*******************"
echo "Installing Python"
echo "*******************"
curl --remote-name https://www.python.org/ftp/python/3.6.6/python-3.6.6-macosx10.9.pkg
sudo installer -pkg python-3.6.6-macosx10.9.pkg -target /
sh /Applications/Python\ 3.6/Update\ Shell\ Profile.command
# Reload Path
export PATH
python3 --version
python3  -c "print('YAY! Python is installed!')"


echo "*******************"
echo "Installing Python Modules"
echo "*******************"
python3 -m pip install --upgrade pip
pip3 install --upgrade ipython jupyter jupyterlab setuptools wheel
pip3 install -U geocoder lxml terminado numpy scipy requests
pip3 install -U pandas matplotlib plotly cufflinks folium bs4
pip3 freeze

echo "*******************"
echo "Installing Git"
echo "*******************"
curl -o git-2.18.0-intel-universal-mavericks.dmg -L https://sourceforge.net/projects/git-osx-installer/files/git-2.18.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect -O
hdiutil attach git-2.18.0-intel-universal-mavericks.dmg
sudo installer -pkg /Volumes/Git\ 2.18.0\ Mavericks\ Intel\ Universal/git-2.18.0-intel-universal-mavericks.pkg -target /
hdiutil detach /Volumes/Git\ 2.18.0\ Mavericks\ Intel\ Universal

export PATH 
git --version

echo "***************************************************"
echo "FINAL CHECKS: Python, jupyter, pip and git versions"
echo "***************************************************"
python3 --version
jupyter-notebook --version
pip3 --version 
git --version 