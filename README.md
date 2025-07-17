# Welcome to my Neovim config!

It's extremely basic and uses Lazy.nvim as the package manager.
To be honest this config is all i really need but i will maintain it since i use it daily lol

## Notes

> [!NOTE]
> Keybinds are located at `lua/config/keybinds.lua` 
> Options are located at `lua/config/options.lua` 
> The plugin folder is located at `lua/plugins` 

> [!WARNING]
> If git clone fails or the plugins don't install then make sure you have SSH setup.

> [!IMPORTANT]
> Make sure you don't have a config located already at /home/YourUser/.config/nvim
> If you do you can make it a backup with:
```mv $HOME/.config/nvim $HOME/.config/nvim_backup```

## Install
```git clone https://github.com/Mitchyopp/neovim $HOME/.config/nvim```

Then just run `nvim` and once inside `:Lazy`
You can then install all the plugins with `I` and update with `U`
