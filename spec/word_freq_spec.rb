require('rspec')
require('word_freq')

describe("String#word_freq") do
  it("counts the number of occurrences of a string within a different string") do
    expect(("bacon bits").word_freq("bacon")).to(eq(1))
  end
  it("counts the number of occurrences of a string within a different string") do
    expect(("friday today is friday").word_freq("friday")).to(eq(2))
  end
  it("counts the number of occurrences of a string within a different string") do
    expect(("That bat! It flew into the window to meet my baseball bat.").word_freq("BAT")).to(eq(2))
  end
end
