find ./doc -name '*.md'| awk -F "." '{print $2}'| xargs -I'{}'  pandoc -s .{}.md -o .{}.adoc
cp -rf ./doc ./adoc
find ./adoc -name "*.md" -type f -delete