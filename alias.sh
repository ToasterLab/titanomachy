#!/bin/bash
alias build="coffeebar --map script.coffee && node-sass --output-style expanded style.sass > style.css"
alias prod="coffeebar --minify script.coffee && node-sass --output-style compressed style.sass > style.css"
echo "build and prod aliases set"