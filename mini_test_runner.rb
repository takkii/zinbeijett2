# frozen_string_literal: true

require 'kconv'
require 'minitest/autorun'

Encoding.default_internal = 'UTF-8'

puts ''
puts ' mini_test in filename list...start '.center(60, '-')
puts ''

# Ruby file find
class MiniFilename
  def mini_find
    puts Dir.glob('./mini_test/*.rb')
  end
end

MiniFilename.new.mini_find

puts ''
puts ' mini_test in filename list...exit '.center(60, '-')
puts ''

# Ruby test file.
module MiniTestOne
  module_function

  def mini_test_version
    require_relative 'mini_test/mini_test_version'
  end

  def mini_test_search
    require_relative 'mini_test/mini_test_search'
  end
end

MiniTestOne.mini_test_version
MiniTestOne.mini_test_search

__END__
