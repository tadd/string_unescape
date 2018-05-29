Gem::Specification.new do |spec|
  spec.name          = "string_unescape"
  spec.version       = "0.1.1"
  spec.authors       = ["Tadashi Saito"]
  spec.email         = ["tad.a.digger@gmail.com"]

  spec.summary       = "String#unescape"
  spec.description   = "Easy String#undump"
  spec.homepage      = "https://github.com/tadd/string_unescape"
  spec.required_ruby_version = ">= 2.5.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "test-unit", "> 0"
end
