require 'spec_helper'

describe "adverts/new" do
  before(:each) do
    assign(:advert, stub_model(Advert,
      :title => "MyString",
      :description => "MyText",
      :content => "MyText",
      :draft => false,
      :archive => false
    ).as_new_record)
  end

  it "renders new advert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => adverts_path, :method => "post" do
      assert_select "input#advert_title", :name => "advert[title]"
      assert_select "textarea#advert_description", :name => "advert[description]"
      assert_select "textarea#advert_content", :name => "advert[content]"
      assert_select "input#advert_draft", :name => "advert[draft]"
      assert_select "input#advert_archive", :name => "advert[archive]"
    end
  end
end
