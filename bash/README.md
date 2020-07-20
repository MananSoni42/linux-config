# Bash
 
## Custom prompt
A simple informative prompt displayed as: **[name|path|git|venv] $**
*  name: The current effective username
*  path: Current path
* git: Current git branch if in a git repository, empty otherwise
* venv: Display a dot if a venv is enabled (in the current directory), empty otherwise

## Tools
* [Autojump](https://github.com/wting/autojump): Intelligent directory hopping
* [Git completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash): Provide tab completion for common git commnands
* [direnv](https://direnv.net/): Load and unload environment variables depending on the current directory

### Setting up
* Install [direnv](https://direnv.net/docs/installation.html) and [autojump]()
* Copy the .bashrc to your home directory
 ```
mv ~/.bashrc ~/.bashrc.old
cp linux-config/.bashrc ~/.bashrc
```
*  Copy relevant files for the .bashrc
```
cp linux-config/git-completion.bash /usr/share/git-core/contrib/completion/git-completion.bash
cp linux-config/autojump.bash /usr/share/autojump/autojump.bash
```
## Aliases

| Command |       Description        | Use instead of  
| ------- | ------------------------ | ---
| cls     | clear + ls               | ls              
| tt      | Send to trash            | rm   
| lt      | Display the system trash | -     
> **tt is a lifesaver** and is pretty similar to the rm command
> It also supports a -r flag to recursively remove directories
