# 💤 LazyVim
# 🚀 My Neovim Configuration

A modern, feature-rich Neovim setup built on LazyVim with custom plugins and keybindings.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
## 📸 Screenshots
<div align="center">
  <img src="assets/screenshots/full5.png" alt="Interface" width="800"/>
</div>

### Full Interface
<div align="center">
  <img src="assets/screenshots/full.png" alt="Full Interface" width="800"/>
  <img src="assets/screenshots/full2.png" alt="Full Interface 2" width="800"/>
</div>

### Snacks Dashboard
<div align="center">
  <img src="assets/screenshots/snacks1.png" alt="Snacks Dashboard" width="800"/>
  <img src="assets/screenshots/snacks2.png" alt="Snacks Dashboard 2" width="800"/>
</div>

### Telescope Fuzzy Finder
<div align="center">
  <img src="assets/screenshots/telescope1.png" alt="Telescope" width="800"/>
  <img src="assets/screenshots/telescope2.png" alt="Telescope 2" width="800"/>
</div>

### Zen Mode
<div align="center">
  <img src="assets/screenshots/zenmode.png" alt="Zen Mode" width="800"/>
</div>

## ✨ Features

- 🎨 **Beautiful UI** - Custom dashboard with Doge ASCII art, smooth animations, and modern design
- 📁 **File Explorer** - Neo-tree with custom icons and Git integration
- 🔍 **Fuzzy Finding** - Telescope for files, text, and more
- 💻 **Terminal** - Integrated floating terminal with toggleterm
- 🌳 **Git Integration** - Gitsigns, Neogit, and Diffview for seamless Git workflow
- 🎯 **Navigation** - Flash, Harpoon for lightning-fast movement
- 📊 **Code Navigation** - Aerial for symbol overview
- 🧘 **Focus Mode** - Zen Mode with Twilight for distraction-free coding
- 🎨 **Colorscheme** - Vague theme with custom purple accents
- 📝 **LSP** - Full language server support with Mason
- 🔧 **Auto-completion** - nvim-cmp with multiple sources
- 🌈 **Syntax Highlighting** - TreeSitter for better code understanding

## ⚡ Key Bindings

### General
| Key | Mode | Action |
|-----|------|--------|
| `jk` / `jj` | Insert | Exit insert mode |
| `<leader>z` | Normal | Toggle Zen Mode |

### File Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<leader>sf` | Normal | Find files |
| `<leader>e` | Normal | Toggle file explorer |
| `<leader>a` | Normal | Toggle symbols outline |
| `s` | Normal/Visual | Flash jump |

### Git
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gg` | Normal | Open Neogit |
| `<leader>gd` | Normal | Open DiffView |
| `<leader>gh` | Normal | Git file history |

### Terminal
| Key | Mode | Action |
|-----|------|--------|
| `<C-\>` | Normal/Terminal | Toggle terminal |
| `<leader>tf` | Normal | Floating terminal |
| `<leader>th` | Normal | Horizontal terminal |
| `<leader>tv` | Normal | Vertical terminal |
| `jk` | Terminal | Exit terminal mode |

### Harpoon
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ha` | Normal | Add file to harpoon |
| `<C-e>` | Normal | Toggle harpoon menu |
| `<C-h>` | Normal | Go to harpoon file 1 |
| `<C-j>` | Normal | Go to harpoon file 2 |
| `<C-k>` | Normal | Go to harpoon file 3 |
| `<C-l>` | Normal | Go to harpoon file 4 |

 ## 📁 Structure
```
~/.config/nvim/
├── lua/
│   ├── config/
│   │   ├── autocmds.lua      # Auto commands
│   │   ├── keymaps.lua       # Key mappings
│   │   └── options.lua       # Vim options
│   └── plugins/
│       ├── aerial.lua        # Code outline
│       ├── better-escape.lua # Fast escape
│       ├── bufferline.lua    # Tab line
│       ├── coding.lua        # Coding utilities
│       ├── colorscheme.lua   # Theme
│       ├── dashboard.lua     # Start screen
│       ├── disable.lua       # Disabled plugins
│       ├── editor.lua        # Editor enhancements
│       ├── explorer.lua      # File explorer
│       ├── git.lua           # Git integration
│       ├──kulala.lua         # HTTP client
│       ├── lazyvim.lua       # LazyVim config
│       ├── live-server.lua   # Live server
│       ├── lsp.lua           # LSP config
│       ├── lualine.lua       # Status line
│       ├── mason.lua         # LSP installer
│       ├── motion.lua        # Navigation plugins
│       ├── project.lua       # Project management
│       ├── telescope.lua     # Fuzzy finder
│       ├── todo-comments.lua # TODO highlighting
│       ├── toggleterm.lua    # Terminal
│       ├── treesitter.lua    # Syntax highlighting
│       ├── typescript.lua    # TypeScript support
│       ├── ui.lua            # UI enhancements
│       └── zen-mode.lua      # Focus mode
└── init.lua


### Install

1. **Backup existing config:**
```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. **Clone this config:**
```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

3. **Start Neovim:**
```bash
nvim
```

## 🙏 Credits

- [LazyVim](https://github.com/LazyVim/LazyVim) - Base configuration
- [folke](https://github.com/folke) - Amazing plugins
- All plugin authors

---

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


**Much Vim. Very Edit. Wow.** 🐕
