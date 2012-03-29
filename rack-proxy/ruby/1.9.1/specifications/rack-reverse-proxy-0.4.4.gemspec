# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rack-reverse-proxy"
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Swope"]
  s.date = "2012-01-26"
  s.description = "A Rack based reverse proxy for basic needs.  Useful for testing or in cases where webserver configuration is unavailable."
  s.email = "jaswope@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/jaswope/rack-reverse-proxy"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.20"
  s.summary = "A Simple Reverse Proxy for Rack"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.15"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.7"])
      s.add_development_dependency(%q<webmock>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0.15"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.7"])
      s.add_dependency(%q<webmock>, ["~> 1.5.0"])
      s.add_dependency(%q<rack>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0.15"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.7"])
    s.add_dependency(%q<webmock>, ["~> 1.5.0"])
    s.add_dependency(%q<rack>, [">= 1.0.0"])
  end
end
