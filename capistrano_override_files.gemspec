$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "capistrano_override_files/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "capistrano_override_files"
  s.version     = CapistranoOverrideFiles::VERSION
  s.authors     = ["Yoshihiro Kameda"]
  s.email       = ["kameda.sbng@gmail.com"]
  s.homepage    = "http://github.com/kmdsbng/capistrano_override_files"
  s.summary     = "Setup stage owned files when cap deploy."
  s.description = "Setup stage owned files when cap deploy."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0"
  s.add_dependency "capistrano-ext"
  s.add_dependency "capistrano"

end
