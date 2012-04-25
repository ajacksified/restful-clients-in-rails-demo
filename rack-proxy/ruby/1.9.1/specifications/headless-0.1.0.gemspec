# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "headless"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leonid Shevtsov"]
  s.date = "2010-08-15"
  s.description = "    Headless is a Ruby interface for Xvfb. It allows you to create a headless display straight from Ruby code, hiding some low-level action.\n"
  s.email = "leonid@shevtsov.me"
  s.homepage = "http://github.com/leonid-shevtsov/headless"
  s.require_paths = ["lib"]
  s.requirements = ["Xvfb"]
  s.rubygems_version = "1.8.20"
  s.summary = "Ruby headless display interface"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
