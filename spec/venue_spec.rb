require('spec_helper')

describe(Venue) do

  it { should have_and_belong_to_many(:bands)}

  it { should validate_presence_of(:name) }

  it("converts the name to titlecase") do
    venue = Venue.create({:name => "harry's wild pit"})
    expect(venue.name()).to(eq("Harry's Wild Pit"))
  end
end
