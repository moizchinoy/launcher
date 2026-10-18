sudo apt update
sudo apt install fzf jq podman xdg-utils -y

cat << 'EOF' >> ~/.bashrc

# Interactive JSON Bookmark Selector
bm() {
    # Default file path if no argument is passed
    local file="${1:-$HOME/launcher/bookmarks.json}"

    if [ ! -f "$file" ]; then
        echo "❌ Error: Bookmarks file not found at '$file'" >&2
        return 1
    fi

    jq -r '.[] | .category as $cat | .links[] | [(if ($cat | length) > 0 then "\($cat) - \(.name)" else .name end), .url] | join("\t")' "$file" | \
    fzf -m --delimiter='\t' --with-nth=1 \
      --height=40% --layout=reverse --border --info=inline \
      --preview-window='bottom:1:border-horizontal' --preview 'echo "🔗 {2}"' | \
    cut -f2 | xargs -P 0 -I {} xdg-open "{}" >/dev/null 2>&1
}
EOF
