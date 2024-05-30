# Setup
This is a set of scripts to build my own preferred setup on MacOs, including:
* Bash setup
* Git setup
* Range of preferred tools

I'm interested to hear if it's useful to anyone or if anyone sees improvements.

# Usage
* Clone this repo
 * In order to do this you need to create a github fine grained access token with permission to write content and read metadata
 * Instructions for this are [available here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)
* Install xcode command line tools `xcode-select --install`
* Set in terminal settings
 * White text
 * Black background
 * Monaco size 14 font
 * Set the shell open command as `/bin/bash`
* Run the `sshkey.sh` script to create an ssh key
* Run the `setup.sh` script, passing your name and email for git config `. setup.sh "Joe Bloggs" joe@bloggs.com`
