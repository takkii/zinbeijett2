require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/prop/version.rb')

class VersionTest < Minitest::Test
  def test_version
    assert_equal Engine::VERSION, '1.0.7'
  end
end
