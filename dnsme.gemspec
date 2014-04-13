# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnsme/version'

Gem::Specification.new do |spec|
  spec.name          = "dnsme"
  spec.version       = Dnsme::VERSION
  spec.authors       = ["Ben LeMasurier"]
  spec.email         = ["ben.lemasurier@gmail.com"]
  spec.summary       = %q{A DNS Made Easy command line interface}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/benlemasurier/dnsme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
end
