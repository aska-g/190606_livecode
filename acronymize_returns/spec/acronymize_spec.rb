require_relative '../acronymize.rb'

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  # works for downcased sentences
  it 'returns a correct acronym of a downcase sentence' do
    actual = acronymize('away from keyboard')
    expected = 'AFK'

    expect(actual).to eq(expected)
  end

  # works for upcased sentences
  it 'returns correct acronym of an upcased sentence' do
    actual = acronymize('AWAY FROM KEYBOARD')
    expected = 'AFK'

    expect(actual).to eq(expected)
  end
end
