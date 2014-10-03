#!/usr/bin/env bash

CMD() {
  echo "$@"
  "$@"
}

CMD cd "$DIR"

CMD docker run --rm -v "$(pwd)/source":/example -w /example golang:1.3.1 go build -v
CMD docker run --rm -v "$(pwd)/source":/example -w /example scratch /example/example
