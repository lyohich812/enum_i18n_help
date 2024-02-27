# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "enum_i18n_helper/version"

Gem::Specification.new do |spec|
  spec.name          = "enum_i18n_helper"
  spec.version       = EnumI18nHelper::VERSION
  spec.authors       = ["Alex P"]
  spec.email         = ["youcanwinhtc@gmail.com"]
  spec.summary       = %q{ Extends of ActiveRecord::Enum for use internationalization }
  spec.description   = %q{ Help ActiveRecord::Enum feature to work fine with I18n.  }
  spec.homepage      = "https://github.com/lyohich812/enum_i18n_helper"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.metadata["source_code_uri"] = "https://github.com/lyohich812/enum_i18n_helper"
  spec.add_dependency "activesupport", ">= 3.0.0"
end
