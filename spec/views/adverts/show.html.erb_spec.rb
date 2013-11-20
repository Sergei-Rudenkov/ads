require 'spec_helper'

describe "adverts/show" do
  before(:each) do
    @advert = assign(:advert, stub_model(Advert,
      :title => "Title",
      :description => "MyText",
      :content => "MyText",
      :draft => false,
      :archive => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
