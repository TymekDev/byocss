#!/bin/sh
git show wiki:index.md | sed '
s/^#/##/ ;
s/^title: "\(.*\)"/# \1/ ;
/^---$/d ;
s/(\(.*\.md\))/(https:\/\/man.sr.ht\/~tymek\/byocss\/\1)/' > README.md
