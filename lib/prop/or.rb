# frozen_string_literal: true

puts ''

require 'kconv'

Encoding.default_internal = 'UTF-8'

module Or_mat
  module_function

  def search
    one = ARGV[1].toutf8

    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        twice = ARGV[2].toutf8
        drive = ARGV[3].toutf8
        three_act4 = /(#{twice}|#{drive})/o

        begin
          if str.match(three_act4) || {}[:match]
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
        raise Or_mat
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
