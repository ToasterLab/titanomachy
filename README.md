HTML5 Canvas experimentation ground

##Compilation

Source `alias.sh` for the `build` and `prod` aliases.

###Coffeescript

Compilation is done with [`coffeebar`](https://www.npmjs.com/package/coffeebar) so the JS is immediately minified.

    coffeebar --map script.coffee
    coffeebar --minify script.coffee
    
###SASS

Compilation is done with [`node-sass`](https://www.npmjs.com/package/node-sass)

    node-sass --output-style compressed style.sass > style.css