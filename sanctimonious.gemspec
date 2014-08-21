# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sanctimonious/version'

Gem::Specification.new do |spec|
  spec.name          = 'sanctimonious'
  spec.version       = Sanctimonious::VERSION
  spec.authors       = ['Usman Bashir']
  spec.email         = ['me@usmanbashir.com']
  spec.summary       = %q{An opinionated static site generator.}
  spec.description   = %q{An opinionated static site generator optimized for programmer happiness and sustainable productivity by favoring convention over configuration.}
  spec.homepage      = 'https://github.com/usmanbashir/sanctimonious'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Core
  spec.add_development_dependency 'bundler',          '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'tilt',             '~> 2.0.1'
  spec.add_development_dependency 'erubis',           '~> 2.7.0'  # TODO: For the time being.
  spec.add_development_dependency 'hooks',            '~> 0.4.0'

  # CLI
  spec.add_development_dependency 'thor',             '~> 0.19.1'

  # Helpers
  spec.add_development_dependency 'activesupport',    '~> 4.1.5'

  # Watcher
  spec.add_development_dependency 'listen',           '~> 2.7.9'  # TODO: Find a better replacement that supports Symlinks.

  # i18n
  spec.add_development_dependency 'i18n',             '~> 0.6.11'
end
