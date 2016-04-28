$:.push File.expand_path('../lib', __FILE__)

require 'rails_nested_secrets/version'

Gem::Specification.new do |s|
  s.name        = 'rails_nested_secrets'
  s.version     = RailsNestedSecrets::VERSION
  s.authors     = ['marshallshen']
  s.email       = ['shen.marshall@gmail.com']
  s.homepage    = 'http://mshen.me'
  s.summary     = 'Enable dot syntax on nested Rails.application.secrets.'
  s.description = 'Enable dot syntax on nested Rails.application.secrets.'
  s.license     = 'MIT'

  s.required_ruby_version = '~> 2.0'

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.1.0'

  s.add_development_dependency 'sqlite3'
end
