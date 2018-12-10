
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "uppy_on_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "uppy_on_rails"
  spec.version       = UppyOnRails::VERSION
  spec.authors       = ["Yan Carlos Marín Osorio"]
  spec.email         = ["yancarlosmarinosorio@gmail.com"]

  spec.summary       = %q{This is a wrapper for uppy.io library}
  spec.description   = %q{Uppy is a file uploader library. You can see more information about it: https://uppy.io/}
  spec.homepage      = "https://github.com/YanCarlos/uppy_on_rails"
  spec.license       = "MIT"



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -- {bin,lib,test,spec,vendor}/* {LICENSE*,Rakefile,README*}`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
