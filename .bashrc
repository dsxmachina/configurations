echo "sh0dan"
alias emacs="emacs-26.1"
export EDITOR="vim"

function ranger-cd {
tempfile="$(mktemp -t tmp.XXXXXX)"
ranger --choosedir="$tempfile" "${@:-$(pwd)}"
test -f "$tempfile" &&
if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
  cd -- "$(cat "$tempfile")"
fi
rm -f -- "$tempfile"
}

alias ranger="ranger-cd"
