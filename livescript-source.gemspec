lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'livescript/source/version'

Gem::Specification.new do |spec|
  spec.name          = "livescript-source"
  spec.version       = Livescript::Source::VERSION
  spec.authors       = ["Victor Hugo Borja", "tomchentw"]
  spec.email         = ["vic.borja@gmail.com", "developer@tomchentw.com"]
  spec.summary       = %q{Provide a compiler for Livescript.}
  spec.description   = %q{LiveScript is a language which compiles to JavaScript. 
    It is a fork of Coco which is in turn derived from CoffeeScript. 
    Like those two it has a relatively straightforward mapping to JavaScript. 
    LiveScript is Coco but much more compatible with CoffeeScript, 
    more functional, and more feature rich. 
    LiveScript aims for increased expressiveness and code beauty.
  }
  spec.homepage      = "https://github.com/Roonin-mx/livescript-source"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
