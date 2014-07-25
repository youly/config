#特殊字符：http://www.unicode.org/charts/PDF/U1F600.pdf
PS1="[\u \e[0;32m`echo -e '\xE2\x98\xBA'`\\e[m \W\e[0;32m\$(parse_git_branch)\e[m]\$ "

parse_git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
