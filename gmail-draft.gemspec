# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gmail/draft/version'

Gem::Specification.new do |spec|
  spec.name          = "gmail-draft"
  spec.version       = Gmail::Draft::VERSION
  spec.authors       = ["kenta-s"]
  spec.email         = ["knt01222@gmail.com"]

  spec.summary       = %q{To create gmail drafts by using Ruby}
  spec.description   = %q{To create gamil drafts by using Ruby}
  spec.homepage      = "https://github.com/kenta-s/gmail-draft"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "google-api-client", "~> 0.9.2"
end
