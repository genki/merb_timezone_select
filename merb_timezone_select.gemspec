# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_timezone_select}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Genki Takiuchi"]
  s.date = %q{2009-01-06}
  s.description = %q{Merb plugin that provides timezone selector}
  s.email = %q{genki@s21g.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb_timezone_select", "lib/merb_timezone_select/helper.rb", "lib/merb_timezone_select/merbtasks.rb", "lib/merb_timezone_select.rb", "spec/merb_timezone_select_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://blog.s21g.com/genki}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Merb plugin that provides timezone selector}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 1.0.7.1"])
      s.add_runtime_dependency(%q<tzinfo>, [">= 0.3.12"])
    else
      s.add_dependency(%q<merb>, [">= 1.0.7.1"])
      s.add_dependency(%q<tzinfo>, [">= 0.3.12"])
    end
  else
    s.add_dependency(%q<merb>, [">= 1.0.7.1"])
    s.add_dependency(%q<tzinfo>, [">= 0.3.12"])
  end
end
