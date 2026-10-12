setopt prompt_subst

git_info() {
  local b=$(git branch --show-current 2>/dev/null)
  [[ -z $b ]] && return
  [[ -n $(git status --porcelain 2>/dev/null) ]] && b+=" ⁺"
  echo " ─ $b"
}

PROMPT='%F{8b8b8b}%~$(git_info)%f
%F{#f4f1f8}›%f '
