#!/usr/bin/env bash
set -euxo pipefail


releases=(
2.0.0
2.0.1
2.1.0
2.2.0
2.2.1
2.3.0
2.3.1
2.4.0
2.5.0
3.0.0
3.1.0
3.2.0
3.2.1
3.3.0
3.3.1
3.3.2
3.3.3
3.4.0
3.5.0
3.6.0
3.7.0
4.0.0
)

for v in "${releases[@]}"
do
    echo $v
    ./new-release.sh $v
done