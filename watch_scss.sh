#!/bin/bash

# Function to compile Sass
compile_sass() {
    sass scss/style.scss:scss/compiled/style.css
}

# Watch for changes in the specified folder
while inotifywait -r -e modify,create,delete,move scss; do
    # Compile Sass when changes are detected
    compile_sass
done
