. ./conf.mk

mkdir -p "$lab"

for i in $(seq 1 95); do
    # Pad the number with leading zeros to 3 digits
    num=$(printf "%03d" "$i")
    fname="$lab/cs25b${num}.awk"
    echo 'BEGIN{print FILENAME}' > "$fname"
done

echo "Created cs25b001.awk to cs25b095.awk inside $lab (each prints its own filename)"
