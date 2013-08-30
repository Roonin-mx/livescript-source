Gem::Specification.new do |s|
  s.name      = 'livescript-source'
  s.version   = '1.2.0'
  s.date      = '2013-08-02'

  s.homepage    = "http://github.com/Roonin-mx/livescript-source"
  s.summary     = "Ruby LiveScript Compiler"
  s.description = <<-EOS
    LiveScript is a language which compiles to JavaScript. It is a fork of Coco which is in turn derived from CoffeeScript. Like those two it has a relatively straightforward mapping to JavaScript. LiveScript is Coco but much more compatible with CoffeeScript, more functional, and more feature rich. LiveScript aims for increased expressiveness and code beauty.
  EOS

  s.files = [
    'lib/livescript/livescript.js',
    'lib/livescript/source.rb'
  ]

  s.authors           = ['Victor Hugo Borja']
  s.email             = 'vic.borja@gmail.com'
end
