# LiveScript::Source

[LiveScript](http://livescript.net) source files used for compiling LiveScript to javascript in ruby.

## Version strategy

The git tags and gem versions keep in sync with LiveScript compiler version it provides.

If for some reason (like packaging error) we need to republish a same version, we'll add a forth segment to the version (eg. 1.5.0.__1__).

Fortunately LiveScript itself only use three-segment version numbers.

## Usage

It's used as a dependency by [livescript gem](https://github.com/Roonin-mx/livescript-ruby).

It's not recommended to install it directly.

Instead, install [livescript](https://github.com/Roonin-mx/livescript-ruby), and it will pick up an appropriate version of this gem to install.

## Maintaining

```
# update LiveScript source file
./update [VERSION]

# test
bundle exec rake test

# build
gem build livescript-source.gemspec

# push to rubygems.org
gem push livescript-source-[VERSION].gem
```

VERSION should be tags in [gkz/LiveScript](https://github.com/gkz/LiveScript/).

## Contributing

1. Fork it ( http://github.com/Roonin-mx/livescript-source/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT
