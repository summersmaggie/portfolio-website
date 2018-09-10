# -*- encoding: utf-8 -*-
# stub: buttercms-rails 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "buttercms-rails".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ButterCMS".freeze]
  s.date = "2017-10-06"
  s.description = "Butter is a blogging platform loved by engineers. See https://buttercms.com for details.".freeze
  s.email = ["support@buttercms.com".freeze]
  s.homepage = "https://buttercms.com/docs".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "A Rails gem for the buttercms.com REST API".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<buttercms-ruby>.freeze, ["~> 1.3.1"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.2.0"])
    else
      s.add_dependency(%q<buttercms-ruby>.freeze, ["~> 1.3.1"])
      s.add_dependency(%q<rails>.freeze, [">= 3.2.0"])
    end
  else
    s.add_dependency(%q<buttercms-ruby>.freeze, ["~> 1.3.1"])
    s.add_dependency(%q<rails>.freeze, [">= 3.2.0"])
  end
end
