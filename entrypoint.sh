#!/bin/sh -l

duck --existing $INPUT_EXISTING --assumeyes -p $INPUT_PASSWORD --upload  $INPUT_PROTOCOL://$INPUT_USERNAME@$INPUT_HOST/public_html$INPUT_TARGET ./$INPUT_SRC