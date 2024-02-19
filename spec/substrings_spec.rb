# If your substrings method is defined in a separate file, require it here
require_relative '../substrings.rb'

describe '#substrings' do
  let(:dictionary) { ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] }

  it 'correctly finds substrings in a single word' do
    expect(substrings("below", dictionary)).to eq({"below"=>1, "low"=>1})
  end

  it 'correctly finds substrings in a sentence' do
    result = substrings("Howdy partner, sit down! How's it going?", dictionary)
    expected = {
      "down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, 
      "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1
    }
    expect(result).to eq(expected)
  end

  it 'is case insensitive' do
    expect(substrings("BeLoW", dictionary)).to eq({"below"=>1, "low"=>1})
  end

  it 'ignores punctuation' do
    expect(substrings("below!", dictionary)).to eq({"below"=>1, "low"=>1})
  end

  it 'returns an empty hash when there are no matches' do
    expect(substrings("xyz", dictionary)).to eq({})
  end
end
