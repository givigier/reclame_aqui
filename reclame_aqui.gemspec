# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reclame_aqui/version'

Gem::Specification.new do |spec|
  spec.name          = 'reclame_aqui'
  spec.version       = ReclameAqui::VERSION
  spec.authors       = ['Gabriel Givigier']
  spec.email         = ['gabriel@givigier.com.br']
  spec.summary       = 'Company verification on ReclameAqui.'
  spec.description   = 'A gem to verify the reputation of a company on ReclameAqui.'
  spec.homepage      = 'https://github.com/givigier/reclame_aqui'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3')

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json', '>= 2.1', '< 2.3'

  spec.add_development_dependency 'bundler', '~> 2.2.12'
  spec.add_development_dependency 'rspec', '~> 3.8.0'
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
end
