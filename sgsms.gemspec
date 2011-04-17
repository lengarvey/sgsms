# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sgsms}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leonard Garvey"]
  s.date = %q{2011-04-14}
  s.email = %q{lengarvey@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "lib/sgsms", "lib/sgsms/version.rb", "lib/sgsms.rb", "test/test_helper.rb", "test/unit", "test/unit/sgsms_test.rb"]
  s.homepage = %q{https://github.com/lengarvey/sgsms}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{This gem sends sms via SMSGlobal's http api}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0.8.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11.0"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])
    end
  end
end
