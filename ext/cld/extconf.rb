#require 'mkmf'
#create_makefile('cld/cld')

system "./configure --prefix=#{Dir.pwd}" unless File.exists?('Makefile')
