require 'minitest/autorun'
require 'execjs'
require 'livescript/source'

class LiveScriptSourceTest < Minitest::Test
  def test_contents
    refute_empty LiveScript::Source.contents
  end

  def test_compile
    context = ExecJS.compile LiveScript::Source.contents
    options = {bare: true, header: false}
    assert_equal 'alert(1);', context.call('LiveScript.compile', 'alert 1', options)
    assert_equal 'add(1, 2);', context.call('LiveScript.compile', 'add 1, 2', options)
    assert_equal %Q{(function(x, y){\n  return x + y;\n});}, context.call('LiveScript.compile', '(x, y) -> x + y', options)
  end
end
