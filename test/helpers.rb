$:.unshift File.dirname(__FILE__) + '/lib'

require 'lib/faye.rb'

include Faye

def E(*args)
  Element.new(*args)
end

def PI(*args)
  Parser.new('').parse_inline(*args)
end

def PI_(*args)
  Element.new(:doc, *Parser.new('').parse_inline(*args)).to_html
end

def P(*args)
  Parser.new(*args)
end

def PB(*args)
  Parser.new(*args).parse_block
end
