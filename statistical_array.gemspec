# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statistical_array/version'

Gem::Specification.new do |spec|
  spec.name          = 'statistical_array'
  spec.version       = StatisticalArray::VERSION
  spec.authors       = ['Todd A. Jacobs']
  spec.email         = ["github.projects@codegnome.org"]
  spec.summary       = %q{Generate statistics from a custom array object.}
  spec.description   = "Perform statistical analysis on a custom array class " +
                       "that doesn't actually inherit from Array. Provides a " +
                       "template system for flexible output."
  spec.homepage      = "https://github.com/CodeGnome/#{spec.name}"
  spec.license       = 'GPLv3'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
