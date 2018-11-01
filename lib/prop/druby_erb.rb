# frozen_string_literal: true

puts ''

require 'kconv'
require 'drb/drb'
require 'erb'
require 'date'

Encoding.default_internal = 'UTF-8'

class Remindar
  def initialize(remindar)
    @remindar = remindar
    @erb = ERB.new(erb_src)
  end

  def erb_src
    <<~EOS
      <html>
      <head>時刻表示</head>
      <body>
      <p><%= Time.new.strftime('%Y年%m月%d日 %H時%M分%S秒') %><p>
      </body>
      </html>
    EOS
  end

  def to_html
    @erb.result(binding)
  end
end

def main
  DRb.start_service
  there = DRbObject.new_with_uri('druby://localhost:8888')
  writer = Remindar.new(there)
  puts writer.to_html
end

main

puts ''

GC.start
