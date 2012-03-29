# HoganAssets

**HoganAssets** compiles your [mustache](http://mustache.github.com/) templates with [hogan.js](http://twitter.github.com/hogan.js/) on **sprockets** and the Rails asset pipeline.

**hogan.js** is a templating engine developed at [Twitter](http://twitter.com) that follows the **mustache** spec and compiles the templates to JavaScript. The first bit is *cool*, since **mustache** is *cool*. The second bit is **awesome and full of win** because we can now compile our **mustache** templates on the server using the asset pipeline/sprockets.

This gem contains **hogan.js v1.0.5**

## Installation

### Installation with Rails 3.1+

Add this to your `Gemfile` as part of the `assets` group

    group :assets do
      gem 'hogan_assets'
    end

And then execute:

    $ bundle

Require `hogan.js` somewhere in your JavaScript manifest, for example in `application.js` if you are using Rails 3.1+:

    //= require hogan.js

Locate your `.mustache` templates with your other JavaScript assets, usually in `app/assets/templates` or `app/assets/javascripts/templates`.
Require your templates with `require_tree`:

    //= require_tree templates

Templates are named for the sub-path below `require_tree`. For example, the file `app/assets/javascripts/templates/pages/person.mustache` will be named `pages/person`.

### Installation with sprockets

Add this line to your `Gemfile`:

    gem 'hogan_assets'

And then execute:

    $ bundle

Require `hogan.js` somewhere in your JavaScript.

*TODO* Templates?

## Usage

Templates are compiled to a global JavaScript object named `HoganTemplates`. To render `pages/person`:

    HoganTemplates['pages/person'].render(context, partials);

# Author

I made this because I <3 **mustache** and want to use it in Rails. Follow me on [Github](https://github.com/leshill) and [Twitter](https://twitter.com/leshill).

# Contributors

* Matthew Nelson (@mdavidn)     : Remove unnecessary template source
* Jack Lawson    (@ajacksified) : Configurable file extension

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
