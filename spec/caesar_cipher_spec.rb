require "./lib/caesar_cipher"

describe "#caesar_cipher" do

  it "shifts a character forwards" do
    expect(caesar_cipher("abc", 2)).to eql("cde")
  end

  it "shifts a character backwards" do
    expect(caesar_cipher("xyz", -3)).to eql("uvw")
  end

  it "wraps around z to a" do
    expect(caesar_cipher("xyz", +3)).to eql("abc")
  end

  it "can make very long shifts" do
    expect(caesar_cipher("abc", +1000)).to eql("mno")
  end

  it "preserves case" do
    expect(caesar_cipher("bCd", +2)).to eql("dEf")
  end

  it "preserves punctuation" do
    expect(caesar_cipher("a!b.c", +3)).to eql("d!e.f")
  end

  it "preserves numbers in the string" do
    expect(caesar_cipher("a2c", +3)).to eql("d2f")
  end

  it "can take a number instead of a string" do
    expect(caesar_cipher(234, +3)).to eql("234")
  end

  it "correctly modifies the example string" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

end

describe "#caesar_cipher_alt" do
  it "correctly modifies the example string" do
    expect(caesar_cipher_alt("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
end
