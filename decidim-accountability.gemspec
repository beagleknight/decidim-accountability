# frozen_string_literal: true
$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "decidim-accountability"
  s.summary     = "An accountability component for decidim's participatory processes."
  s.description = s.summary
  s.version     = "0.0.1"
  s.authors     = ["Amaia Castro", "Josep Jaume Rey Peroy", "Marc Riera Casals", "Oriol Gual Oliva"]
  s.email       = ["amaia.castro@gmail.com", "josepjaume@gmail.com", "mrc2407@gmail.com", "oriolgual@gmail.com"]
  s.license     = "AGPLv3"
  s.homepage    = "https://github.com/AjuntamentdeBarcelona/decidim"
  s.required_ruby_version = ">= 2.3.1"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "LICENSE.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core"
  s.add_dependency "decidim-comments"

  s.add_development_dependency "decidim-dev"
  s.add_development_dependency "decidim-comments"
  s.add_development_dependency "decidim-meetings"
  s.add_development_dependency "decidim-proposals"
end
