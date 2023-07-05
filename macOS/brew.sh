CN_BREW_GIT=https://mirrors.ustc.edu.cn/brew.git
CN_HOMEBREW_CORE_GIT=https://github.com/Homebrew/homebrew-core.git
BREW_DIR=/usr/local/Homebrew
HOMEBREW_CORE_DIR=$BREW_DIR/Library/Taps/homebrew/homebrew-core
# Clone base
git clone $CN_BREW_GIT $BREW_DIR
git clone $CN_HOMEBREW_CORE_GIT $HOMEBREW_CORE_DIR
# Replace origin to github in order to install
cd $HOMEBREW_CORE_DIR && git remote rm origin
git remote add origin https://github.com/Homebrew/homebrew-core.git
# Install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Replace origin to china after successful
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
brew update
