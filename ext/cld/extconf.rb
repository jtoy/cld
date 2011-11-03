require "rake"
home_dir = File.expand_path(File.join(File.dirname(__FILE__), "../../"))
puts home_dir
cmd = "cd #{home_dir}; ./build.sh"
sh cmd
sh "cp #{home_dir}/cld.so #{home_dir}/ext/cld/"