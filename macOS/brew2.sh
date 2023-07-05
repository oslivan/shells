CORE_PARENT_DIR=/usr/local/Homebrew/Library/Taps/homebrew
cd /usr/local/ && sudo git clone https://mirrors.ustc.edu.cn/brew.git Homebrew
sudo chown -R $USER:admin Homebrew
mkdir -p CORE_PARENT_DIR && cd CORE_PARENT_DIR && git clone https://mirrors.ustc.edu.cn/homebrew-core.git
brew update
