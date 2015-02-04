# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reclame_aqui/version'

Gem::Specification.new do |spec|
  spec.name          = "reclame_aqui"
  spec.version       = ReclameAqui::VERSION
  spec.authors       = ["Gabriel Givigier", "Pedro Dias"]
  spec.email         = ["gabriel@agrid.com.br", "pedro@agrid.com.br"]
  spec.summary       = %q{Company verification in ReclameAqui.}
  spec.description   = %q{A gem that verify the reputation of a company in ReclameAqui.}
  spec.homepage      = "https://github.com/givigier/reclame_aqui"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "json", "~> 1.8.2"
end
