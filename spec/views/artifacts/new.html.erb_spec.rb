require 'rails_helper'

RSpec.describe "artifacts/new", type: :view do
  before(:each) do
    assign(:artifact, Artifact.new(
      :height => 1,
      :width => 1,
      :art_dataset_name => "MyString",
      :art_location => "MyString",
      :discipline_en => "MyString",
      :discipline_fr => "MyString",
      :catalogue_number => "MyString",
      :image_original => "MyString",
      :image_thumbnail => "MyString",
      :artifact_group_en => "MyString",
      :artifact_group_fr => "MyString",
      :artifact_category_en => "MyString",
      :artifact_category_fr => "MyString",
      :artifact_sub_category_en => "MyString",
      :artifact_sub_category_fr => "MyString",
      :artifact_composition_general_en => "MyString",
      :artifact_composition_general_fr => "MyString",
      :artifact_composition_specific_en => "MyString",
      :artifact_composition_specific_fr => "MyString",
      :artifact_date => "MyString",
      :objname_en => "MyString",
      :objname_fr => "MyString",
      :artifact_references => "MyString"
    ))
  end

  it "renders new artifact form" do
    render

    assert_select "form[action=?][method=?]", artifacts_path, "post" do

      assert_select "input#artifact_height[name=?]", "artifact[height]"

      assert_select "input#artifact_width[name=?]", "artifact[width]"

      assert_select "input#artifact_art_dataset_name[name=?]", "artifact[art_dataset_name]"

      assert_select "input#artifact_art_location[name=?]", "artifact[art_location]"

      assert_select "input#artifact_discipline_en[name=?]", "artifact[discipline_en]"

      assert_select "input#artifact_discipline_fr[name=?]", "artifact[discipline_fr]"

      assert_select "input#artifact_catalogue_number[name=?]", "artifact[catalogue_number]"

      assert_select "input#artifact_image_original[name=?]", "artifact[image_original]"

      assert_select "input#artifact_image_thumbnail[name=?]", "artifact[image_thumbnail]"

      assert_select "input#artifact_artifact_group_en[name=?]", "artifact[artifact_group_en]"

      assert_select "input#artifact_artifact_group_fr[name=?]", "artifact[artifact_group_fr]"

      assert_select "input#artifact_artifact_category_en[name=?]", "artifact[artifact_category_en]"

      assert_select "input#artifact_artifact_category_fr[name=?]", "artifact[artifact_category_fr]"

      assert_select "input#artifact_artifact_sub_category_en[name=?]", "artifact[artifact_sub_category_en]"

      assert_select "input#artifact_artifact_sub_category_fr[name=?]", "artifact[artifact_sub_category_fr]"

      assert_select "input#artifact_artifact_composition_general_en[name=?]", "artifact[artifact_composition_general_en]"

      assert_select "input#artifact_artifact_composition_general_fr[name=?]", "artifact[artifact_composition_general_fr]"

      assert_select "input#artifact_artifact_composition_specific_en[name=?]", "artifact[artifact_composition_specific_en]"

      assert_select "input#artifact_artifact_composition_specific_fr[name=?]", "artifact[artifact_composition_specific_fr]"

      assert_select "input#artifact_artifact_date[name=?]", "artifact[artifact_date]"

      assert_select "input#artifact_objname_en[name=?]", "artifact[objname_en]"

      assert_select "input#artifact_objname_fr[name=?]", "artifact[objname_fr]"

      assert_select "input#artifact_artifact_references[name=?]", "artifact[artifact_references]"
    end
  end
end
