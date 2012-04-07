# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gravatar"
  s.version = "1.0"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Thomas Rasmussen"]
  s.autorequire = "gravatar"
  s.cert_chain = nil
  s.date = "2006-09-17"
  s.email = "sethrasmussen@gmail.com"
  s.extra_rdoc_files = ["README", "CHANGELOG"]
  s.files = ["README", "CHANGELOG"]
  s.homepage = "http://sethrasmussen.com"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubygems_version = "1.8.15"
  s.summary = "gravatar is a class to represent GRAVATAR[http://gravatar.com] avatars. also features some hooks and misc other related goodies. by Seth Thomas Rasmussen"

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
