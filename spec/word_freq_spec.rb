require('rspec')
require('word_freq')

describe("String#word_freq") do
  it("returns if an inputted string that is test for returns") do
    expect(("bits").word_freq("bits")).to(eq(1))
  end
  it("returns if looked for string is within another string") do
    expect(("bit of some bits").word_freq('bit')).to(eq(1))
  end
  it("counts the number of occurrences of a string within a different string") do
    expect(("friday today is friday").word_freq("friday")).to(eq(2))
  end
  it("counts the number of occurrences of a string within a different string regardless of punctuation marks and capitalization") do
    expect(("That bat! It flew into the window to meet my baseball bat.").word_freq("BAT")).to(eq(2))
  end
end
