require 'bundler'
Bundler::GemHelper.install_tasks
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.rspec_opts = "--format TestAlignCentaur --color"
  spec.pattern = "spec/**/*_spec.rb"
end

task :default => :spec
