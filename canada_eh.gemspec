# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'canada_eh/version'

Gem::Specification.new do |spec|
  spec.name          = "canada_eh"
  spec.version       = CanadaEh::VERSION
  spec.authors       = ["Maverick"]
  spec.email         = ["maverick6688@gmail.com"]
  spec.summary       = %q{Canadian Provinces broken down into cities, municipalities and townships.}
  spec.description   = %q{Giving you the ability to drill down from top level geographic regions like provinces all the way down to tiny Canadian towns.}
  spec.homepage      = "http://github.com/maverick9000/canada_eh"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
  spec.add_runtime_dependency 'active_hash'
end
