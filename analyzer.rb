require 'nokogiri'
require 'open-uri'
require 'pathname'

class Analyzer

  def initialize(params)
    if params.length < 2
      puts 'Arguments not found!'
      return  
    end
    element = params[2] || '#make-everything-ok-button'

    #Try to find 'element' in the original file
    original_path = Pathname.new(params[0])
    unless File.file? original_path
      puts 'Arguments not found!'
      return
    end
    original_file = Nokogiri::HTML(open(original_path))
    original = original_file.search(element).first
    # puts "Original file - #{(original && original.path) ? 'Ok': 'Fail'}"

    #Try to find 'element' in the sample file
    sample_path = Pathname.new(params[1])
    unless File.file? sample_path
      puts 'Sample path not found!'
      return
    end
    sample_file = Nokogiri::HTML(open(sample_path))
    sample = sample_file.search(element).first
    puts sample.path if sample
  end
end

if ARGV.empty?
  puts 'Arguments not found!'
  return
end
Analyzer.new(ARGV)