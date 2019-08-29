require 'nokogiri'
require 'open-uri'
require 'pathname'

class Analyzer

  def initialize(params)
    raise ArgumentError.new 'Arguments not found!' if params.empty?
    element = params[2] || '#make-everything-ok-button'

    #Try to find 'element' in the original file
    original_path = Pathname.new(params[0])
    original_file = Nokogiri::HTML(open(original_path))
    original = original_file.search(element).first
    # puts "Original file - #{(original && original.path) ? 'Ok': 'Fail'}"

    #Try to find 'element' in the sample file
    sample_path = Pathname.new(params[1])
    sample_file = Nokogiri::HTML(open(sample_path))
    sample = sample_file.search(element).first
    puts sample.path if sample
  end
end

Analyzer.new(ARGV)