require_relative 'lib/livescript/source/version'

Gem::Specification.new do |s|
  s.name     = 'livescript-source'
  s.version  = LiveScript::Source::VERSION
  s.authors  = ['Victor Hugo Borja', 'tomchentw', 'Bian Jiaping']
  s.email    = ['vic.borja@gmail.com', 'developer@tomchentw.com', 'ssbianjp@gmail.com']
  s.homepage = 'https://github.com/Roonin-mx/livescript-source'
  s.license  = 'MIT'

  s.summary       = 'Wrapper of LiveScript official node.js compiler.'
  s.description   = %q{LiveScript is a language which compiles to JavaScript.
    It has a straightforward mapping to JavaScript and allows you to write expressive code devoid of repetitive boilerplate.
    While LiveScript adds many features to assist in functional style programming,
    it also has many improvements for object oriented and imperative programming.
  }

  s.files = Dir[
    'lib/**/*',
    'test/**/*',
    'Rakefile',
    'LICENSE',
    'README.md',
  ]

  s.post_install_message = "Notice:\n  livescript-source >= 1.4.0 only work with livescript-ruby >= 2.3.0"

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 11.1'
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'execjs', '~> 2.6'
end
