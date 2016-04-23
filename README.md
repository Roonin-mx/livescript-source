# LiveScript::Source

[LiveScript](http://livescript.net) source files used for compiling LiveScript to javascript in ruby.

## Version strategy

The git tags and gem versions keep in sync with LiveScript compiler version it provides.

But with one exception: the `rc` part.

Since [rubygems.org](https://rubygems.org) doesn't allow re-push a version, and doesn't support release number, there is no way to fix bugs or add new features without breaking the version consistency with LiveScript. We use `rc` as release number to solve this problem.

Each time LiveScipt releases a new version, say 1.4.0, we will release this gem as `1.4.0.rc.1`. When bugs are fixed or new features are added, we'll release a new version of `1.4.0.rc.2`, and then `1.4.0.rc.3`, `1.4.0.rc.4`, ...

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
