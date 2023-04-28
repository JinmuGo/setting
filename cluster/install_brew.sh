# Add it to ~/.zprofile
# Or run this command:
#   echo "bash $HOME/scripts/install_brew.sh" >> ~/.zprofile
# IMPORTANT!
#   chmod +x install_brew.sh

#!/bin/bash
if [[ -d "$HOME/goinfre/.brew" ]]
then
  echo "== found the brew repository in \"~/goinfre/\" =="
else
  rm -rf $HOME/.brew
  git clone --depth=1 https://github.com/Homebrew/brew $HOME/goinfre/.brew
  echo "== fetched the brew repository successfully =="
fi

if [[ -d "$HOME/.brew" ]]
then
  echo "== brew exists =="
else
  ln -s "$HOME/goinfre/.brew" "$HOME/.brew"
  echo 'export PATH=$HOME/goinfre/.brew/bin:$PATH' >> $HOME/.zshrc
  source $HOME/.zshrc
  brew update
  echo "== installed brew successfully =="
fi

if [[ -x "$(command -v tmux)" ]]
then
  echo "== tmux exists =="
else
  brew install tmux
  echo "== installed tmux successfully =="
fi

if [[ -d "$HOME/goinfre/.brew/Caskroom/maccy" ]]
then
  echo "== maccy exists =="
else
  brew install maccy --appdir=$HOME/goinfre/Applications
  echo "== installed maccy successfully =="
fi

if [[ -d "$(command -v autojump)" ]]
then
  echo "== autojump exists =="
else
  brew install autojump --appdir=$HOME/goinfre/Applications
  echo "== installed autojump successfully =="
fi

if [[ -d "$(command -v gitmoji)" ]]
then
  echo "== gitmoji exists =="
else
  brew install gitmoji --appdir=$HOME/goinfre/Applications
  echo "== installed gitmoji successfully =="
fi

# if [[ -d "$HOME/goinfre/.brew/Caskroom/obsidian" ]]
# then
#   echo "== obsidian exists =="
# else
#   brew install --cask obsidian --appdir=$HOME/goinfre/Applications
#   echo "== installed obsidian successfully =="
# fi

# if [[ -d "$HOME/goinfre/.rustup" ]]
# then
#   echo "== rust exists =="
# else
#   RUSTUP_HOME=${RUSTUP_HOME:-${HOME}/goinfre/.rustup}
#   CARGO_HOME=${CARGO_HOME:-${HOME}/goinfre/.cargo}
#   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | RUSTUP_HOME=${RUSTUP_HOME} CARGO_HOME=${CARGO_HOME} sh -s -- -y
#   echo "export RUSTUP_HOME=${RUSTUP_HOME}" >> ${CARGO_HOME}/env
#   echo "export CARGO_HOME=${CARGO_HOME}" >> ${CARGO_HOME}/env
#   echo "== installed rust successfully =="
# fi
