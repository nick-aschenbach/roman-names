require 'roman_names/version'
require 'yaml'

module RomanNames
  class Generator
    ROOT_PATH = File.dirname(__dir__)

    def initialize
      path = File.join(ROOT_PATH, 'assets', 'names.yml')
      @data = YAML::load(File.open(path, 'r'))
    end

    def male
      "#{@data['praenomens'].sample} #{@data['nomens']['male'].sample} #{@data['cognomens']['male'].sample}"
    end

    def female
      "#{@data['nomens']['female'].sample} #{@data['cognomens']['female'].sample}"
    end
  end
end
