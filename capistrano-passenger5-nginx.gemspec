# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/passenger5_nginx/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-passenger5-nginx"
  gem.version       = Capistrano::Passenger5Nginx::VERSION
  gem.authors       = ["Hüseyin Öztürk"]
  gem.email         = ["huseyin.ozturk@standout.se"]
  gem.description   = <<-EOF.gsub(/^\s+/, '')
    Capistrano tasks for automatic  and sensible unicorn + nginx configuraion.

    Enables zero downtime deployments of Rails applications. Configs can be
    copied to the application using generators and easily customized.

    Works *only* with Capistrano 3+. For Capistrano 2 try version 0.0.8 of this
    gem: http://rubygems.org/gems/capistrano-Passenger5-nginx
  EOF
  gem.summary       = "Capistrano tasks for automatic and sensible Passenger 5 + nginx configuraion."
  gem.homepage      = "https://github.com/hsyn/capistrano-Passenger5-nginx"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "capistrano", ">= 3.1"
  gem.add_dependency "sshkit", ">= 1.2.0"

  gem.add_development_dependency "rake"
end
