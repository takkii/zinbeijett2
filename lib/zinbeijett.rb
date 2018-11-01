# frozen_string_literal: true

require 'kconv'
require 'timeout'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'UTF-8'

# zinbeijett function
class Zin
  def search_txt
    require_relative 'prop/all'
    All.search
  end

  def search_txi
    require_relative 'prop/and'
    And.search
  end

  def search_txe
    require_relative 'prop/not'
    Not.search
  end

  def search_txs
    require_relative 'prop/or'
    Or_mat.search
  end

  def search_gc
    require 'prop/gc'
    Star_mot_en.new.search
  end

  def search_druby_erb
    require_relative 'prop/druby_erb'
  end

  def search_mail
    require_relative 'prop/mail'
    Mail.search
  end
end

one = ARGV[0]
z = /\A[-][z]\z/
a = /\A[-][a]\z/
n = /\A[-][n]\z/
o = /\A[-][o]\z/
d = /\A[-][d]\z/
g = /\A[-][g]\z/
m = /\A[-][m]\z/

zi = Zin.new

if one.nil?
  puts 'engine is Zinbeijett, I made in 2016.'.toutf8
elsif one.match?(z)
  zi.search_txt
elsif one.match?(a)
  zi.search_txi
elsif one.match?(n)
  zi.search_txe
elsif one.match?(o)
  zi.search_txs
elsif one.match?(g)
  zi.search_gc
elsif one.match?(m)
  zi.search_mail
elsif one.match?(d)
  zi.search_druby_erb
else
  puts 'Not other arguments!'.toutf8
end

__END__
