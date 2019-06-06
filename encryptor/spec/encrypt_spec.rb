require_relative "../encrypt"

describe "#encrypt" do
  # works for an empty string
  it 'returns an empty string if input is an empty string' do
    expect(encrypt('')).to eq('')
  end

  # works for actual text
  it 'returns an encrypted string for correct input' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

    expect(actual).to eq(expected)
  end
end
