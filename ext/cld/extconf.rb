require 'mkmf'

if arg_config('--help')
  print <<-HELP
Usage: ruby #{$0} [options]

  --disable-clean
      Leave temporary files after a successful build.

  --enable-full
      Detect more languages with a larger library file.

  HELP
  exit
end

have_library('stdc++') or abort

cld2_library =
  if enable_config('full', false)
    'libcld2_full.so'
  else
    'libcld2.so'
  end

cld2_files = IO.readlines(File.join(File.dirname(__FILE__), 'internal', 'compile_libs.sh')).
  take_while { |line| !line.include?(cld2_library) }.reverse.
  take_while { |line| !line.include?('g++') }.
  flat_map { |line| line.split(' ') } - %w(\\)

$srcs = cld2_files.map { |name| File.join('internal', name) } + %w(thunk.cc)
$objs = $srcs.map { |name| name.sub(/[.].*$/, ".#{$OBJEXT}") }

create_makefile('cld/cld2')

IO.write('Makefile', <<-EOF, :mode => 'a')
CLEANOBJS := $(CLEANOBJS) #{File.join('internal', "*.#{$OBJEXT}")}
EOF

if enable_config('clean', true)
  IO.write('Makefile', <<-EOF, :mode => 'a')
#{IO.readlines('Makefile').find { |line| /^install:/ === line }.chomp} distclean
  EOF
end
