<p align="center">
  <img src="assets/tmux-jump-logo.png"
       alt="Vimium/Easymotion like cursor jump for tmux."
       title="tmux-jump" />
</p>

[![Build Status](https://travis-ci.org/schasse/tmux-jump.svg?branch=master)](https://travis-ci.org/schasse/tmux-jump)

A fast way to jump wherever you want in your terminal without using the mouse. A plugin similar to [vimium](https://vimium.github.io/) and [easymotion](https://github.com/easymotion/vim-easymotion) but for tmux. tmux-jump is written in ruby and can easily be installed via tpm.

![tmux-jump](assets/tmux-jump-demo.gif)

From now to then I think about how to improve my dev tools. Copy and pasting inside the terminal is something I do everyday, all the time. This is one of the most obvious things make more efficient. [tmux-yank](https://github.com/tmux-plugins/tmux-yank) improved the situation a lot. Though, it felt still annoying to get to the string I wanted to copy. Either I used to enter tmux copy mode and moved the cursor to the string or I used the mouse. I looked for a plugin such as easymotion for vim or ace jump for emacs, but I couldn't find one. So I decided to write my own tmux plugin.

## Requirements

* [tmux](https://github.com/tmux/tmux) >= 1.8
* [ruby](https://www.ruby-lang.org/) >= 2.3

## Installation with [TPM](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `~/.tmux.conf`:

```
set -g @plugin 'schasse/tmux-jump
```
Hit <kbd>tmux-prefix</kbd> + <kbd>I</kbd> to fetch the plugin and source it. You should now be able to use the plugin.

## Manual Installation

Clone the repository:

```
git clone https://github.com/schasse/tmux-jump ~/.tmux-jump
```

Add the following to `.tmux.conf`:

```
run-shell ~/.tmux-jump/tmux-jump.tmux
```

Reload tmux:

```
tmux source-file ~/.tmux.conf
```

## Usage

* <kbd>tmux-prefix</kbd> + <kbd>j</kbd> and enter the first character of a word.
* The screen will rerender and highlight the keys to press to jump to the word.
* Type the key sequence of the word to jump to.
* The cursor moves to the word.

tmux-jump can also be used in in any program and during copy mode.

## Similar Projects

* [vimium](https://vimium.github.io/)
* [easymotion](https://github.com/easymotion/vim-easymotion)
* [ace-jump-mode](https://github.com/winterTTr/ace-jump-mode)
