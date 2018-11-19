#!/usr/bin/env rake
require "bundler/setup"
require "bundler/gem_tasks"
require "bump/tasks"

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

task :extconf do
  sh "cd ext/cld && ruby extconf.rb"
end

task default: [:extconf, :spec]
