require('rspec')
require('fo_shizzle')

describe String do
  it('replaces every "s" in a string with a "z"') do
    expect("roses".fo_shizzle).to(eq("rozez"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect("suns".fo_shizzle).to(eq("sunz"))
  end

  it('replaces letters correctly in a string of words') do
    expect("moses supposes his toeses are roses".fo_shizzle).to(eq("mozez suppozez hiz toezez are rozez"))
  end

  it('makes correct replacements regardless of case') do
    expect("Mrs. McSweet's street is Astoria Street!".fo_shizzle).to(eq("Mrz. McSweet'z street iz Aztoria Street!"))
  end
end
