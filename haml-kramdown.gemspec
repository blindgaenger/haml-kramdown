# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haml-kramdown/version'

Gem::Specification.new do |spec|
  spec.name        = 'haml-kramdown'
  spec.version     = Haml::Kramdown::VERSION
  spec.authors     = ['blindgaenger']
  spec.email       = ['blindgaenger@gmail.com']
  spec.summary     = %q{HAML filter for Kramdown}
  spec.description = %q{HAML filter for Kramdown}
  spec.homepage    = 'https://github.com/blindgaenger/haml-kramdown'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'

  spec.add_runtime_dependency 'haml', '~> 4.0'
  spec.add_runtime_dependency 'kramdown'
end
