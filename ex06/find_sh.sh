find . -type f - exec sh -c

pathname=$(basename"$pathname")


print F "%s/n" "${pathname%.*}"

done'sh {} +
