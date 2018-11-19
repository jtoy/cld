require File.expand_path('../lib/cld/version', __FILE__)

Gem::Specification.new "cld", CLD::VERSION do |gem|
  gem.authors       = ["Jason Toy"]
  gem.email         = ["jtoy@jtoy.net"]
  gem.description   = %q{Compact Language Detection for Ruby}
  gem.summary       = %q{Compact Language Detection for Ruby}
  gem.homepage      = "https://github.com/jtoy/cld"

  gem.files         = `git ls-files -- {ext,lib}/*`.split("\n") + ["LICENSE", "README.md"]
  gem.extensions    = ["ext/cld/extconf.rb"]

  gem.add_dependency "ffi"
end
