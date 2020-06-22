
export FT_LINE 1 = 8
export FT_LINE 2 = 16

cat /etc/passwd | \
	grep -v '\#'| \
	sed '1!n;d' | \
	cut -d' : ' | \
	rev | \
	sort -r | \
	awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2]' | \
	paste -s -d"," - | \
	sed 's/,/, /g' | \
	sed 's/$/ ./' | \
	tr -d '\n
