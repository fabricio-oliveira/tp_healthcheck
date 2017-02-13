# frozen_string_literal: true
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'healthcheck/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'healthcheck'
  s.version     = Healthcheck::VERSION
  s.authors     = ['Fabricio Oliveira']
  s.email       = ['fabricio.oliveira@m4u.com.br']
  s.summary       = 'gem thas implement healthcheck'
  s.homepage      = 'https://github.com/fabricio-oliveira/heath'
  s.license       = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 5.0.1'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-rcov'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'sqlite3'
end
