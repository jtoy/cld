# Compact Language Detection

Blazing-fast language detection for Ruby provided by
Google Chrome's Compact Language Detector.

## How to Use

```ruby
require 'cld'

CLD.detect_language("This is a test")
# => {name: "ENGLISH", code: "en", reliable: true}

CLD.detect_language("plus ça change, plus c'est la même chose")
# => {name: "FRENCH", code: "fr", reliable: true}
```

## Installation

```bash
gem install cld
```

## Development

- [install C++ CLD](https://github.com/mzsanford/cld#installing)

## Thanks

Thanks to the Chrome authors, and to Mike McCandless for writing a Python version.

Licensed the same as Chrome.  Jason Toy
