# frozen_string_literal: true

require 'kconv'

Encoding.default_internal = 'UTF-8'

module Mail
  module_function

  def search
    one = ARGV[1].toutf8

    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        three_act = /^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/o

        begin
          if str.match(three_act) || {}[:match]
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
        raise Mail
      rescue Exception => ee
        puts ee.backtrace
        puts ee.backtrace_locations
      end
    end
    end
end
end

puts ''

GC.start
