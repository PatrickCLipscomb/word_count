require('rspec')
require('word_count')

describe("String#word_count") do
  it('return the number of times a give string appears in the string') do
    expect('put the putter down'.word_count('put')).to(eq(1))
  end
  it('return the number of times a give string appears in the string') do
    expect('The Antz gO marching, Two ... by two'.word_count('two')).to(eq(2))
  end
end
