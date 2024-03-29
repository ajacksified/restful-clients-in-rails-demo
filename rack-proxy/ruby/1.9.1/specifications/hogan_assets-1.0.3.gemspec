# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "hogan_assets"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Les Hill"]
  s.date = "2012-03-09"
  s.description = "Use compiled hogan.js (mustache) JavaScript templates with sprockets and the Rails asset pipeline."
  s.email = ["leshill@gmail.com"]
  s.homepage = "https://github.com/leshill/hogan_assets"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.20"
  s.summary = "Use compiled hogan.js (mustache) JavaScript templates with sprockets and the Rails asset pipeline."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<tilt>, [">= 1.3.3"])
      s.add_runtime_dependency(%q<sprockets>, [">= 2.0.3"])
    else
      s.add_dependency(%q<execjs>, [">= 1.2.9"])
      s.add_dependency(%q<tilt>, [">= 1.3.3"])
      s.add_dependency(%q<sprockets>, [">= 2.0.3"])
    end
  else
    s.add_dependency(%q<execjs>, [">= 1.2.9"])
    s.add_dependency(%q<tilt>, [">= 1.3.3"])
    s.add_dependency(%q<sprockets>, [">= 2.0.3"])
  end
end
