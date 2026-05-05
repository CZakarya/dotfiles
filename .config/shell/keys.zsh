# Common Backspace/Delete fixes
stty erase '^?'
bindkey '^?' backward-delete-char   # DEL
bindkey '^H' backward-delete-char   # Ctrl-H / BS
bindkey '\e[3~' delete-char         # Delete (forward-delete)

# Common Ctrl+Left / Ctrl+Right sequences (cover multiple terminal variants)
bindkey '\e[1;5C' forward-word      # Ctrl-Right (xterm)
bindkey '\e[1;5D' backward-word     # Ctrl-Left  (xterm)
bindkey '\e[5C'   forward-word      # Ctrl-Right (alternate)
bindkey '\e[5D'   backward-word     # Ctrl-Left  (alternate)
bindkey '\e[1;3C' forward-word      # some terminals send alt/ctrl combos
bindkey '\e[1;3D' backward-word
bindkey '\e[Oc'   forward-word      # rxvt / other variants
bindkey '\e[Ob'   backward-word

# Home / End (cover multiple terminal sequences)
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line
bindkey '\e[1~'   beginning-of-line
bindkey '\e[4~'   end-of-line
bindkey '\e[7~'   beginning-of-line
bindkey '\e[8~'   end-of-line
bindkey '\eOH'    beginning-of-line   # rxvt / some XTerm variants
bindkey '\eOF'    end-of-line

# Alt/Meta backspace (delete previous WORD)
bindkey '\e\177' backward-kill-word
