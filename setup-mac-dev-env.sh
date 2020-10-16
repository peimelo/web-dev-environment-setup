#!/bin/bash

# In order to be able to execute this script, run 'chmod a+x setup-mac-dev-env.sh' to make the file executable

echo "Execute Installation Script"
read -r -p "Absolutely NO WARRANTIES or GUARANTEES are provided. Are you sure you want to continue? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    echo "==> Checking if brew is installed"
    which -s brew
    if [[ $? != 0 ]] ; then
    echo "==> Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew tap homebrew/cask
    else
    echo "Found brew"
    fi

    echo "==> Installing git"
    brew install git
    brew upgrade git

    echo "==> Installing GitHub Desktop"
    brew cask install github
    brew upgrade --cask github

    echo "==> Installing NodeJS"
    brew install node@12
    brew upgrade node@12

    echo "==> Installing Docker"
    brew cask install docker
    brew upgrade --cask docker

    echo "==> Installing AWS"
    brew install awscli
    brew upgrade --cask awscli

    echo "==> Installing VS Code"
    brew cask install visual-studio-code
    brew upgrade --cask visual-studio-code

    echo "==> Installing ffmpeg"
    brew install ffmpeg
    brew upgrade ffmpeg

    echo "==> Installing Heroku CLI"
    brew tap heroku/brew && brew install heroku
    brew upgrade heroku/brew/heroku

    echo "==> Installing Services"
    brew tap homebrew/services

    echo "==> Installing MySQL"
    brew install mysql
    brew upgrade mysql

    echo "==> Installing PostgreSQL"
    brew install postgresql
    brew upgrade postgresql

    echo "==> Installing Rbenv"
    brew install rbenv ruby-build
    brew upgrade rbenv ruby-build

    echo "==> Installing Yarn"
    brew install yarn
    brew upgrade yarn

    echo "Results:"
    echo "Verify installation of AWS, Docker, GitHub Desktop and VS Code manually."

    gitVersion=$(git --version)
    echo "git: $gitVersion"

    nodeVersion=$(node -v)
    echo "Node: $nodeVersion"

    npmVersion=$(npm -v)
    echo "npm: $npmVersion"

    yarnVersion=$(yarn -v)
    echo "yarn: $yarnVersion"
else
    echo "Aborted."
fi

## Samples of more sophisticated install & verify routine
# echo "Checking if brew is installed"
# which -s brew
# if [[ $? != 0 ]] ; then
#   echo "Installing brew"
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# else
#   echo "Found brew"
# fi

# echo "Checking for Node version ${NODE_VERSION}"
# node -v | grep ${NODE_VERSION}
# if [[ $? != 0 ]] ; then
#   echo "Installing Node version ${NODE_VERSION}"
#   brew install nodejs
# else
#   echo "Found Node version ${NODE_VERSION}"
# fi
