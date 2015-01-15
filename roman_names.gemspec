# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman_names/version'

Gem::Specification.new do |spec|
  spec.name          = 'roman_names'
  spec.version       = RomanNames::VERSION
  spec.authors       = ['Nick Aschenbach', 'James OKelly']
  spec.email         = ['nick.aschenbach@gmail.com', 'james@rubyloves.me']
  spec.description   = %q{A fun generator to generate ancient roman names}
  spec.summary       = <<-EOF
This is a rewrite of the roman-name-generator gem with a simplified interface and a small bug fix.
Here is a sample of generated male names:
"Caius Apusti Clarus" "Tiberius Muci Verus" "Mamercus Opimi Marcellus" "Quintus Sosi Blaesus" "Marcus Didi Carbo" "Sextus Mari Corvus" "Titus Anni Maximus" "Gnaeus Acci Gracchus" "Sextus Flavi Caligula" "Gnaeus Rupili Lupus"
Here is a sample of generated female names:
"Larci Faustina" "Atili Sabina" "Macci Flacilla" "Duili Porcia" "Popilli Euphemia" "Caedici Mamaea" "Nauti Baebiana" "Hortensi Alfidia" "Pompili Orbiana" "Virgili Porcia"}
EOF
  spec.homepage      = 'https://github.com/nick-aschenbach/roman-names'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.4'

  spec.add_development_dependency 'rspec', '~> 3.0'
end
