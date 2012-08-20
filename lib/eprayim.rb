$:.unshift << File.dirname(__FILE__)

require 'eprayim/element.rb'
require 'eprayim/parser.rb'
require 'eprayim/render.rb'
require 'eprayim/render/html.rb'

module Eprayim
  class Doc
    # the origin text before parse
    attr_reader :text
    attr_reader :parser

    def initialize(text)
      raise "#{text} should be a string." if not [String, nil].include? text.class
      @text = text
      @parser = Parser.new(@text)
    end

  end
end
