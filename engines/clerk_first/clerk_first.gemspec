$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "clerk_first/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "clerk_first"
  s.version     = ClerkFirst::VERSION
  s.authors     = ["MeysaM"]
  s.email       = ["meysammeisam@gmail.com"]
  s.homepage    = "http://myclerk.ir"
  s.summary     = "Main Website."
  s.description = "Main website for MyClerk include mobile version"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

end
