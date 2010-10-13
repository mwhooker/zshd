setopt EXTENDED_GLOB
for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~] ; do
    source $zshrc_snipplet
done
