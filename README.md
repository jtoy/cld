# Compact Language Detection

Blazing-fast langauge detection for Ruby provided by
Google Chrome's Compact Language Detector.

## Installation

Add this line to your application's Gemfile:

    gem 'cld'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cld

## Usage

```ruby
lang = CLD.detect_language("This is a test")
# => {:name => "ENGLISH", :code => "en", :reliable => true}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
