$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "turboctrl/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "turboctrl"
  s.version     = Turboctrl::VERSION
  s.authors     = ["Masaki Komagata"]
  s.email       = ["komagata@gmail.com"]
  s.homepage    = "https://github.com/komagata/turboctrl"
  s.summary     = "Javascript controller for Rails."
  s.description = "Javascript controller for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "Rakefile", "README.md", "README.*.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.1"

  s.add_development_dependency "sqlite3"
end
