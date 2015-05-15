require('spec_helper')

describe(Band) do

  it { should have_and_belong_to_many(:venues)}

  it { should validate_presence_of(:name) }

  it("converts the name to titlecase") do
    band = Band.create({:name => "fine bunch of boys"})
    expect(band.name()).to(eq("Fine Bunch Of Boys"))
  end

end
