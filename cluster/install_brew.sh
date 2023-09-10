# Add it to ~/.zprofile
# Or run this $(command:
#)   echo "bash $HOME/scripts/install_brew.sh" >> ~/.zprofile
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
#echo 'export PATH=$HOME/goinfre/.brew/bin:$PATH' >> $HOME/.zshrc
  source $HOME/.zshrc
  brew update
  echo "== installed brew successfully =="
fi

if [[ -d "$HOME/goinfre/Applications/Maccy.app" ]]
then
  echo "== maccy exists =="
else
  brew install maccy --appdir=$HOME/goinfre/Applications
  echo "== installed maccy successfully =="
fi
if [[ -d "$HOME/goinfre/Applications/Notion.app" ]]
then
  echo "== notion exists =="
else
  brew install notion --appdir=$HOME/goinfre/Applications
  echo "== installed notion successfully =="
fi


if [[ -d "$HOME/goinfre/Applications/Cron.app" ]]
then
  echo "== cron exists =="
else
  brew install cron --appdir=$HOME/goinfre/Applications
  echo "== installed cron successfully =="
fi

if [[ -x "$(command -v tmux)" ]]
then
  echo "== tmux exists =="
else
  brew install tmux --appdir=$HOME/goinfre/Applications
  echo "== installed tmux successfully =="
fi

if [[ -x "$(command -v reattach-to-user-namespace)" ]]
then
  echo "== reattach-to-user-namespace exists =="
else
  brew reinstall reattach-to-user-namespace --appdir=$HOME/goinfre/Applications
  echo "== installed reattach-to-user-namespace successfully =="
fi

if [[ -x "$(command -v pre-commit)" ]]
then
  echo "== pre-commit exists =="
else
  brew install pre-commit --appdir=$HOME/goinfre/Applications
  echo "== installed pre-commit successfully =="
fi

if [[ -x "$(command -v gitmoji)" ]]
then
  echo "== gitmoji exists =="
else
  brew install gitmoji --appdir=$HOME/goinfre/Applications
  echo "== installed gitmoji successfully =="
fi

if [[ -x "$(command -v autojump)" ]]
then
  echo "== autojump exists =="
else
  brew install autojump --appdir=$HOME/goinfre/Applications
  echo "== installed autojump successfully =="
fi

if [[ -x "$(command -v gh)" ]]
then
  echo "== gh exists =="
else
  brew install gh --appdir=$HOME/goinfre/Applications
  echo "== installed gh successfully =="
fi

if [[ -x "$(command -v clang-format)" ]]
then
  echo "== clang-format exists =="
else
  brew install clang-format --appdir=$HOME/goinfre/Applications
  echo "== installed clang-format successfully =="
fi

if [[ -x "$(command -v tree)" ]]
then
  echo "== tree exists =="
else
  brew install tree --appdir=$HOME/goinfre/Applications
  echo "== installed tree successfully =="
fi

if [[ -x "$(command -v fzf)" ]]
then
  echo "== fzf exists =="
else
  brew install fzf --appdir=$HOME/goinfre/Applications
  echo "== installed fzf successfully =="
fi

if [[ -x "$(command -v pygmentize)" ]]
then
  echo "== pygments exists =="
else
  brew install pygments --appdir=$HOME/goinfre/Applications
  echo "== installed pygments successfully =="
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
