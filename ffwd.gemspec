# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ffwd/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["jamiehodge"]
  gem.email         = ["jamiehodge@me.com"]
  gem.description   = %q{FFMPEG client}
  gem.summary       = %q{FFMPEG client}
  gem.homepage      = "http://jamiehodge.github.com/ffwd/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ffwd"
  gem.require_paths = ["lib"]
  gem.version       = Ffwd::VERSION
end
