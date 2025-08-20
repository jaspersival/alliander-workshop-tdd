# Install marp-cli with plugins
```bash
sudo apt update
# Add plugin marp-hide-slides
git clone https://gist.github.com/13a9f52c96821ae34c3de5f732f305df.git node_modules/marp-hide-slides
sudo npm i
```

# If you dont have a Chrome yet in WSL, then install it:
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo apt install ./google-chrome-stable_current_amd64.deb;
rm google-chrome-stable_current_amd64.deb;
```

# Install LibreOffice to convert slides to editable PowerPoint files
```bash
sudo apt update
sudo apt install libreoffice;
```

# Build slides to html as well as Powerpoint
```bash
marp
```
