#!/bin/bash

CDK_VERSION=1.124.0
# npm packages
cmd=(
    npm install -g
    commitizen
    @angular/cli
    nodemon
    npm -g install aws-cdk@${CDK_VERSION}
)

# execute it
"${cmd[@]}"