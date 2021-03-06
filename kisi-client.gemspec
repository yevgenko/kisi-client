# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kisi/client/version'

Gem::Specification.new do |spec|
  spec.name          = "kisi-client"
  spec.version       = Kisi::Client::VERSION
  spec.authors       = ["Yevhen V."]
  spec.email         = ["wik@bdhr.co"]

  spec.summary       = %q{Ruby Client for the KISI (Access Control System) API}
  spec.homepage      = "https://github.com/yevgenko/kisi-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'httparty', '~> 0.13.7'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
