# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'formtastic-separate_html5_date_and_time/version'

Gem::Specification.new do |gem|
  gem.name          = "formtastic-separate_html5_date_and_time"
  gem.version       = Formtastic::SeparateHtml5DateAndTime::VERSION
  gem.authors       = ["John Bintz"]
  gem.email         = ["john@coswellproductions.com"]
  gem.description   = %q{Separate HTML 5 date and time fields for use with existing polyfills and Mongoid}
  gem.summary       = %q{Separate HTML 5 date and time fields for use with existing polyfills and Mongoid}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
