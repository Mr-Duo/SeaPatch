#/bin/bash

src="jobs/2026-10-25__00-02-03"
dest="58008-30"
mkdir -p "$dest"

for d in "$src"/CVE-*__*/; do
  [ -d "$d" ] || continue
  name=$(basename "$d")
  cve="${name%%__*}"          # e.g. CVE-2017-7233
  echo "CVE found: $cve  ($name)"
  mv "$cve" "$dest/"
done