# RomanNames

A rewrite of the roman-name-generator gem with a simplified interface

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'roman_names'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roman_names

## Usage

```ruby
require 'roman_names'

generator = RomanNames::Generator.new

# Generate a male name string
generator.male

# Generate a female name string
generate.female
```

Here is a sample of generated male names:

"Caius Apusti Clarus"
"Tiberius Muci Verus"
"Mamercus Opimi Marcellus"
"Quintus Sosi Blaesus"
"Marcus Didi Carbo"
"Sextus Mari Corvus"
"Titus Anni Maximus"
"Gnaeus Acci Gracchus"
"Sextus Flavi Caligula"
"Gnaeus Rupili Lupus"

Here is a sample of generated female names:

"Larci Faustina"
"Atili Sabina"
"Macci Flacilla"
"Duili Porcia"
"Popilli Euphemia"
"Caedici Mamaea"
"Nauti Baebiana"
"Hortensi Alfidia"
"Pompili Orbiana"
"Virgili Porcia"

## Contributing

1. Fork it ( https://github.com/[my-github-username]/roman_names/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
