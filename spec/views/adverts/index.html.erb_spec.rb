require 'spec_helper'

describe "adverts/index" do
  before(:each) do
    assign(:adverts, [
      stub_model(Advert,
        :title => "Title",
        :description => "MyText",
        :content => "MyText",
        :draft => false,
        :archive => false
      ),
      stub_model(Advert,
        :title => "Title",
        :description => "MyText",
        :content => "MyText",
        :draft => false,
        :archive => false
      )
    ])
  end

  it "renders a list of adverts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
