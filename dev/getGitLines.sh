#/bin/bash
### FILE USED TO COUNT LINES OF A GIT PROJECT TOGETHER WITH THE FILE NAMES
### PASTES THE RESULTS BETWEEN THE HEADER AND THE FOOTER SPECIFIED
### RUN THIS FILE IN THE ROOT OF YOUR GIT PROJECT

echo "\`\`\`" > /tmp/linesCount.txt
git ls-files | xargs wc -l >> /tmp/linesCount.txt
echo "\`\`\`" >> /tmp/linesCount.txt

# current line count head

# current line count tail
lead='^### current line count head$'
tail='^### current line count tail$'
sed -e "/$lead/,/$tail/{ /$lead/{p; r /tmp/linesCount.txt
}; /$tail/p; d }"  README.md > /tmp/tmpReadme.md
rm README.md
cp /tmp/tmpReadme.md README.md
