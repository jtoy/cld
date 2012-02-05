# Compact Language Detection

Blazing-fast langauge detection for Ruby provided by
Google Chrome's Compact Language Detector.

## How to Use

```ruby
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
