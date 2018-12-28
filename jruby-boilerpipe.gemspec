# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boilerpipe/version'

Gem::Specification.new do |spec|
  spec.name          = 'jruby-boilerpipe'
  spec.version       = Boilerpipe::VERSION
  spec.authors       = ['Gregory Ostermayr']
  spec.email         = ['<gregory.ostermayr@gmail.com>']

  spec.summary       = %q{Ruby wrapper around boilerpipe java library}
  spec.description   = %q{Java8 compiled - latest boilerpipe-2.0-SNAPSHOT - including all dependencies}
  spec.homepage      = 'https://github.com/gregors/jruby-boilerpipe'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rickshaw'
end
