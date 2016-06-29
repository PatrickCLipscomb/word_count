require('rspec')
require('rck_ppr_scrs')

describe("String#rck_ppr_scrs") do
  it('return the sum of the correct scores for each letter') do
    expect('rock'.beats?('scissors')).to(eq(true))
  end
  it('return the sum of the correct scores for each letter') do
    expect('paper'.beats?('paper')).to(eq('Its a Draw'))
  end
end
