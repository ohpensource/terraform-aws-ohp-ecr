#!/bin/bash
chmod +x scripts/*.sh
WKDIR=$PWD

cd ./modules || exit
for f in *; do
  if [ -d "$f" ]; then
    # cycle through each module dir and initialize
    cd "$f" || exit
    echo -e "\n## Init module $f"
    if ! terraform init -input=false -backend=false; then exit $?; fi
    source "$WKDIR"/scripts/tfm_lint.sh
    source "$WKDIR"/scripts/tfm_validate.sh
    cd ..
  fi
done
cd ..



