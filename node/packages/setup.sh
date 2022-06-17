#!/bin/bash

# npm packages
cmd=(
    npm install -g
    commitizen
    @angular/cli
    nodemon
)



# execute it
"${cmd[@]}"