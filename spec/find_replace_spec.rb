require('rspec')
require('rck_ppr_scrs')

describe("String#find_replace") do
  it('return the sum of the correct scores for each letter') do
    expect('hello universe'.find_replace('universe', 'galaxy')).to(eq('hello galaxy'))
  end
  # it('return the sum of the correct scores for each letter') do
  #   expect('paper'.beats?('paper')).to(eq('Its a Draw'))
  # end
end
