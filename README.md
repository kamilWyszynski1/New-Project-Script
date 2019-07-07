# New-Project-Script

## Functionality
* Creates directory with given name inside given path
* Opens project folder
* Initialize local git repository
* Creates project on github using API 
* Creates readme file 
* git add/commit/push

## Inspiration
https://www.youtube.com/watch?v=7Y8Ppin12r4

## Instruction
First of all you have to set your github username in git config.
```
$ git config --global user.name "Mona Lisa"
```
Then, you have to generate API Token in your github account.
Right after set environmental variable called **TOKEN** , 
put it here if you use Ubuntu:
```
sudo -H gedit /etc/environment
```
Additionally add *automatition.sh* to your path so u can use it anywhere. You can put bash script into $HOME/bin folder and add it to PATH.