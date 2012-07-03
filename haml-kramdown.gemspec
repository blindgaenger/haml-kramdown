# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'haml-kramdown/version'

Gem::Specification.new do |s|
  s.name        = 'haml-kramdown'
  s.version     = Haml::Kramdown::VERSION
  s.authors     = ['blindgaenger']
  s.email       = ['blindgaenger@gmail.com']
  s.homepage    = ''
  s.summary     = %q{HAML filter for Kramdown}
  s.description = %q{HAML filter for Kramdown}

  s.rubyforge_project = 'haml-kramdown'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'haml'
end
