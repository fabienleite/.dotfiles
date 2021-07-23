# .dotfiles

My Dotfiles 🤷

I use a ZSH environment with more and more tools and I find it more and more
hard to maintain and reinstall. So I was like "yeah, let's centralize it"

## What you'll need

- Being on MacOS. That's what I have and that's only for tool installation at the beginning of
the script, you can comment it or replace it by your own install tools
- Git
- `.specific-setup.zsh` file on your home. Put your "specific to my current computer" conf there. 
It must / can include :
  - **MANDATORY** : `PYENV_ROOT` environment variable which links to the root of Pyenv (mine is currently `$HOME/.pyenv`)
  - **MANDATORY** : `ZPATH` environment variable which links to the directory containing the Z executable (mine is currently `/usr/local/Cellar/z/1.9/etc/profile.d`)
  - **OPTIONAL** : A lot of random environment variables (`JAVA_HOME`, `ANSIBLE_HOST_KEY_CHECKING`, ...)
- None of these files :
  - `~/.zshrc`
  - `~/.zprofile`
  - `~/.config/starship.toml`
  - `~/.config/nvim/<whatever the fuck there is in the nvim folder>`
  - `~/.scripts/<whatever the fuck there is in the script folder>`

## Warning

⚠️ **PLEASE CREATE BACKUPS**, this tool was made for me and only for me in an hour.
It's probably buggy as F. ⚠️

If you are having problems and created backups, you could probably use this basic command :

```sh
rm ~/.zshrc && rm ~/.zprofile && rm -rf ~/.config/nvim && rm ~/.config/starship.toml && rm -rf ~/.scripts
```

## Usage

Please install from the directory of this README, the installer is quite crappy and there is
a chance it wont work if you use it from elsewhere.

```sh
./install.sh
```

## Licence

See [LICENSE](./LICENSE) file, it's MIT.
