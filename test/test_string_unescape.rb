require 'test-unit'

require_relative '../lib/string_unescape'

class TestUnescape < Test::Unit::TestCase
  def test_unescape
    assert_equal('foo', 'foo'.unescape)
    assert_equal('foo#$bar#@baz#{quxx}', 'foo\#$bar\#@baz\#{quxx}'.unescape)
    assert_equal('\\', '\\\\'.unescape)
    assert_equal(%(\\"), '\\\\\"'.unescape)
    assert_equal("\n", '\n'.unescape)
    assert_equal(%(\\"\n), '\\\\\"\n'.unescape)
    assert_equal('すごーい', '\u3059\u3054\u30FC\u3044'.unescape)
    assert_equal('\\a\\', '\\\\a\\\\'.unescape)
    assert_equal("\nn", '\nn'.unescape)
    assert_equal("\u30593059", '\u30593059'.unescape)
    assert_equal('たのしー', '\xE3\x81\x9F\xE3\x81\xAE\xE3\x81\x97\xE3\x83\xBC'.unescape)
    assert_equal('🐾', '\u{1F43E}'.unescape)
    assert_equal(%(すごーい\\🐾たのしー\n\#{foo}),
                 ('\u3059\u3054\u30FC\u3044\\\\\u{1F43E}' +
                  '\xE3\x81\x9F\xE3\x81\xAE\xE3\x81\x97\xE3\x83\xBC\\n\#{foo}').unescape) if false
  end

  def test_unescape_error
    assert_raise(RuntimeError) {'\u'.unescape}
    assert_raise(RuntimeError) {'\u{'.unescape}
    assert_raise(RuntimeError) {'\u{3042'.unescape}
    assert_raise(RuntimeError) {'\x'.unescape}
    assert_equal('#', '\#'.unescape)
    assert_raise(RuntimeError) {'\\'.unescape}
  end
end
