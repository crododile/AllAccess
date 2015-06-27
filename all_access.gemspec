# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'all_access/version'

Gem::Specification.new do |spec|
  spec.name          = "all_access"
  spec.version       = AllAccess::VERSION
  spec.authors       = ["Coburn Berry"]
  spec.email         = ["coburn.d.berry@gmail.com"]
  spec.summary       = %q{generate accessors for intance variables in initializer}
  spec.description   = %q{Your class is really a bag of attributes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
