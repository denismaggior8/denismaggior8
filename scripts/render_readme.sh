#!/bin/bash

# remove old content

#sed '/^###/,/^\###/{/^###/!{/^\###/!d}}' ../README.md
export PAGE_UPDATE_TIMESTAMP="⚡$(date)⚡"
#cat ../README.md | sed "s/^Last page update:.*/Last page update: $PAGE_UPDATE_TIMESTAMP/g"

perl -p -i -e "s/^Last page update:.*$/Last page update: $PAGE_UPDATE_TIMESTAMP/g" ../README.md
#export DYNAMIC_CONTENT="### Dynamic content ###
#
#dynamic test <> \" ' ### Start next section ### "
#
#sed 's/^### Dynamic content ### .* ### Start next section ###/### Dynamic content ###$DYNAMIC_CONTENT### Start next section ###/g' ../README.md
#echo "test $DYNAMIC_CONTENT" 