require "spec_helper"

describe Messy::Posten do
  before(:each) do
    Messy.api_url = 'http://localhost:3000/api/v1'

    @letter = Messy::Letter.new
    @letter.address = "Something"
  end

  it "should send an letter" do
    result = Messy::Posten.send(@letter)
    result.should be_a(Hash)
  end
end