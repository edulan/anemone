# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "anemone/version"

Gem::Specification.new do |s|
  s.name = "anemone"
  s.version = Anemone::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Chris Kite"]
  s.homepage = "http://anemone.rubyforge.org"
  s.summary = "Anemone web-spider framework"

  s.rubyforge_project = "anemone"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.has_rdoc = true
  s.rdoc_options << '-m' << 'README.rdoc' << '-t' << 'Anemone'
  s.extra_rdoc_files = ["README.rdoc"]

  s.add_dependency "nokogiri", ">= 1.3.0"
  s.add_dependency "robots", ">= 0.7.2"
  s.add_dependency "mongo"
  s.add_dependency "bson_ext"
  s.add_dependency "redis"
  s.add_dependency "tokyocabinet"

  s.add_development_dependency "rspec"
  s.add_development_dependency "fakeweb"
end
