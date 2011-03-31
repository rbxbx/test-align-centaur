# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "test-align-centaur"
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tim Pope", "Robert Pitts"]
  s.email       = ["code@tpo"+"pe.net"]
  s.homepage    = "http://github.com/tpope/test-align-centaur"
  s.summary     = %q{The Centaur RSpec progress bar formatter}
  s.description = %q{Centaur your RSpec progress output}

  s.rubyforge_project = "test-align-centaur"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'centaur'
  s.add_runtime_dependency 'rspec', '~> 2.0'
end
