# frozen_string_literal: true

puts ''

require 'kconv'

Encoding.default_internal = 'UTF-8'

module And
  module_function

  def search
    one = ARGV[1].toutf8

    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[2].toutf8
        three_act2 = /^(?=.*#{twice})/o

        begin
          if str.match(three_act2) || {}[:match]
            printf('%2d : %s', f.lineno, str)
            puts ''
          end
        rescue Timeout::Error, Exception => e
          exit!
        end
      end

      if f.eof?
        puts ''
      elsif !f.eof
        begin
        raise And
      rescue Exception => ee
        puts ee.backtrace
        puts ee.backtrace_locations
        exit!
      end
    end
    end
end
end

puts ''

GC.start
