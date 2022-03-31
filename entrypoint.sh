#!/bin/sh -l

duck --existing $INPUT_EXISTING --password $INPUT_PASSWORD --verbose --assumeyes --upload  $INPUT_PROTOCOL://$INPUT_USERNAME@$INPUT_HOST/public_html$INPUT_TARGET ./$INPUT_SRC