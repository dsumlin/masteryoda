# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paginate"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nando Vieira"]
  s.date = "2011-04-17"
  s.description = "Paginate collections using SIZE+1 to determine if there is a next page. Includes ActiveRecord and ActionView support."
  s.email = ["fnando.vieira@gmail.com"]
  s.homepage = "http://rubygems.org/gems/paginate"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Paginate collections using SIZE+1 to determine if there is a next page. Includes ActiveRecord and ActionView support."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<test_notifier>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_development_dependency(%q<actionpack>, ["~> 3.0.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4.0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<test_notifier>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_dependency(%q<actionpack>, ["~> 3.0.0"])
      s.add_dependency(%q<rspec>, ["~> 2.4.0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<test_notifier>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
    s.add_dependency(%q<actionpack>, ["~> 3.0.0"])
    s.add_dependency(%q<rspec>, ["~> 2.4.0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
  end
end
