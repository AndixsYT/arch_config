if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /home/andixs/.spicetify /home/andixs/bin

# Created by `pipx` on 2026-01-08 00:19:31
set PATH $PATH /home/andixs/.local/bin

set PATH $PATH /home/andixs/.cargo/bin
set PATH $PATH /home/andixs/.npm-global

starship init fish | source
