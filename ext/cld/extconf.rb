#require 'mkmf'
#create_makefile('cld/cld')

ENV['CFLAGS'] = ENV['CFLAGS'].to_s + ' -Wno-narrowing'
ENV['CXXFLAGS'] = ENV['CXXFLAGS'].to_s + ' -Wno-narrowing'

system "./configure --prefix=#{Dir.pwd}" unless File.exists?('Makefile')
