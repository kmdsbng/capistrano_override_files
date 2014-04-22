$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "capistrano_override_files/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "capistrano_override_files"
  s.version     = CapistranoOverrideFiles::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CapistranoOverrideFiles."
  s.description = "TODO: Description of CapistranoOverrideFiles."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0"
  s.add_dependency "capistrano-ext"
  s.add_dependency "capistrano"

end
