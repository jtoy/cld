# Compact Language Detection

Blazing-fast language detection for Ruby provided by
Google Chrome's [Compact Language Detection 2](https://code.google.com/p/cld2/).

## How to Use

```ruby
require 'cld'

CLD.detect_language("This is a test")
# => {:name => "ENGLISH", :code => "en", :reliable => true}

CLD.detect_language("plus ça change, plus c'est la même chose")
# => {:name => "FRENCH", :code => "fr", :reliable => true}
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem "cld"
```

And then execute:

```sh
$ bundle
```

## Thanks

Thanks to the Chrome authors, and to Mike McCandless for writing a Python version.

Licensed the same as Chrome.  Jason Toy