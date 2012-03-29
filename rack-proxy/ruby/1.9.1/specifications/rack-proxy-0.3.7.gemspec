# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rack-proxy"
  s.version = "0.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jacek Becela"]
  s.date = "2012-02-01"
  s.description = "A Rack app that provides request/response rewriting proxy capabilities with streaming."
  s.email = ["jacek.becela@gmail.com"]
  s.homepage = "http://rubygems.org/gems/rack-proxy"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rack-proxy"
  s.rubygems_version = "1.8.20"
  s.summary = "A request/response rewriting HTTP proxy. A Rack app."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
  end
end
