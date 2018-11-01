# frozen_string_literal: true

require 'kconv'
require 'test/unit'

Encoding.default_internal = 'UTF-8'

puts ''
puts ' ./test in filename list...start! '.center(60,'-')
puts ''

class Filename

  def find
    puts Dir.glob('./test/*.rb')
  end
end

Filename.new.find

puts ''
puts ' ./test in filename list...exit. '.center(60,'-')
puts ''

puts ''
puts ' Test All Start '.center(60,'-')
puts ''

module Test_One

  module_function

  def for_all
    Test::Unit::AutoRunner.run(true, './test')
  end
end

Test_One.for_all

puts ''
puts ' Test All End '.center(60,'-')
puts ''

__END__
