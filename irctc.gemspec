# -*- encoding: utf-8 -*-
require File.expand_path('../lib/irctc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Prasanna N"]
  gem.email         = ["prasann87@gmail.com"]
  gem.description   = %q{Handy utility to tell you when irctc's ticket counter opens}
  gem.summary       = %q{Given a date for which you want to book tickets, this tool will give you the day the irctc counter will open so you can book.
  
  Given any current date, the tool will give the date for which irctc counter is opening for that date.}
  gem.homepage      = "https://github.com/npras/irctc"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "irctc"
  gem.require_paths = ["lib"]
  gem.version       = Irctc::VERSION
  gem.executables   << 'irctc'
end
