# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tunefind/version'

Gem::Specification.new do |spec|
  spec.name          = "tunefind"
  spec.version       = Tunefind::VERSION
  spec.authors       = ["Marcus Mansur"]
  spec.email         = ["marcusm@jobready.com.au"]

  spec.summary       = %q{Ruby client for tunefind.com REST API}
  spec.description   = %q{Ruby client for tunefind.com REST API}
  spec.homepage      = "https://github.com/louman/tunefind"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"

  spec.add_dependency "rest-client", "~> 1.8"
  spec.add_dependency "hashie", "~> 3.4"
end
