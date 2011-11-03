require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('cld', '0.4.0') do |p|
  p.description     = "Compact Language Detection from chrome"
  p.url             = "http://github.com/jtoy/cld"
  p.author          = "Jason Toy"
  p.email           = "jtoy@jtoy.net"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.runtime_dependencies = ["ffi"]
  p.development_dependencies = []
end

#Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
