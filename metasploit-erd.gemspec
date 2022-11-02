# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metasploit/erd/version'

Gem::Specification.new do |spec|
  spec.name          = 'metasploit-erd'
  spec.version       = Metasploit::ERD::VERSION
  spec.authors       = ['Metasploit Hackers']
  spec.email         = ['msfdev@metasploit.com']
  spec.summary       = 'Extensions to rails-erd to find clusters of models to generate subdomains specific to each model'
  spec.description   = 'Traces the belongs_to associations on ActiveRecord::Base descendants to find the minimum ' \
                       'cluster in which all foreign keys are fulfilled in the Entity-Relationship Diagram.'
  spec.homepage      = 'https://github.com/rapid7/metasploit-erd'
  spec.license       = 'BSD-3-clause'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency 'metasploit-yard'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency 'activerecord', '~> 7.0'
  spec.add_runtime_dependency 'activesupport', '~> 7.0'
  spec.add_runtime_dependency 'rails-erd'
end
