#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rake/extensiontask"
require "rspec/core/rake_task"

Rake::ExtensionTask.new('cld2') do |ext|
  ext.ext_dir = 'ext/cld'
  ext.lib_dir = 'lib/cld'
end

prerequisites = Rake::Task['compile:cld2'].prerequisites
prerequisites.each do |name|
  if name.end_with? 'Makefile'
    internal = File.join(File.dirname(name), 'internal')
    directory internal
    task name => internal
    break
  end

  prerequisites.push(*Rake::Task[name].prerequisites)
end

RSpec::Core::RakeTask.new("spec")
