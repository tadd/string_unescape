# String#unescape

String#unescape is condition-relaxed String#undump.

## Usage

```ruby
require 'string_unescape'

puts '\u3059\u3054\u30FC\u3044'.unescape #=> すごーい
puts '\xE3\x81\x9F\xE3\x81\xAE\xE3\x81\x97\xE3\x83\xBC'.unescape #=> たのしー
puts '\u{1F43E}'.unescape #=> 🐾
```

Note that you don't need to wrap the string with '"'.

See [testcase](https://github.com/tadd/string_unescape/blob/master/test/test_unescape.rb) also.

## Supported Ruby versions

2.5.x or later.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_unescape'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_unescape

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tadd/string_unescape .

## License

Ruby's.  See [COPYING](COPYING).
