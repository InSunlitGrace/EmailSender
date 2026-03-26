. ./conf.mk

mkdir -p "$lab"

num=$(printf "%03d" "$selfroll")
fname="$lab/cs25b${num}.awk"
echo 'BEGIN{print FILENAME}' > "$fname"

echo "Created $filename"
