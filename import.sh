#!/bin/bash

set -e

rake clean
TARGETS="clean build/java/server/test/org/openqa/selenium/server-with-tests-standalone.jar //rb:gem:build"
export SELENIUM_ROOT=$HOME/src/selenium
cd $SELENIUM_ROOT
./go $TARGETS
cd -
rake import
bundle install