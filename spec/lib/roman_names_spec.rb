require 'spec_helper'

describe RomanNames::Generator do
  subject { RomanNames::Generator.new }
  let(:data) {
    {
      'praenomens' =>
        ['Tiberius'],
      'nomens' => {
        'male' =>
          ['Hermini'],
        'female' =>
          ['Semproni']
      },
      'cognomens' => {
        'male' =>
          ['Octavianus'],
        'female' =>
          ['Terentia']
      }
    }
  }

  describe '.initialize' do
    before do
      stub_const('RomanNames::Generator::ROOT_PATH', 'foobar')
    end

    it 'assigns the ROOT_PATH' do
      expect(RomanNames::Generator::ROOT_PATH).to eq('foobar')
    end

    it 'joins the path' do
      allow(File).to receive(:open).and_return('---')
      expect(File).to receive(:join).with('foobar', 'assets', 'names.yml')

      subject
    end

    it 'opens the correct file' do
      expect(File).to receive(:open).with('foobar/assets/names.yml', 'r')
      allow(YAML).to receive(:load)

      subject
    end

    it 'assigns the yaml file to the data instance variable' do
      allow(File).to receive(:open).with('foobar/assets/names.yml', 'r')
      allow(YAML).to receive(:load).and_return(data)

      expect(subject.instance_variable_get('@data')).to eq(data)
    end
  end

  describe 'name generation' do
    before do
      allow(File).to receive(:open)
      allow(YAML).to receive(:load).and_return(data)
    end

    describe '#male' do
      it 'assigns the correct name' do
        expect(subject.male).to eq('Tiberius Hermini Octavianus')
      end

      it 'samples the right parts of the name hash' do
        expect(data['praenomens']).to receive(:sample)
        expect(data['nomens']['male']).to receive(:sample)
        expect(data['cognomens']['male']).to receive(:sample)

        subject.male
      end
    end

    describe '#female' do
      it 'assigns the correct name' do
        expect(subject.female).to eq('Semproni Terentia')
      end

      it 'samples the right parts of the name hash' do
        expect(data['nomens']['female']).to receive(:sample)
        expect(data['cognomens']['female']).to receive(:sample)

        subject.female
      end
    end
  end
end