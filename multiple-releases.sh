#!/usr/bin/env bash
set -euxo pipefail


releases=(
v2.0.0
v2.0.1
v2.1.0
v2.2.0
v2.2.1
v2.3.0
v2.3.1
v2.4.0
v2.5.0
v3.0.0
v3.1.0
v3.2.0
v3.2.1
v3.3.0
v3.3.1
v3.3.2
v3.3.3
v3.4.0
v3.5.0
v3.6.0
v3.7.0
v4.0.0
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done
