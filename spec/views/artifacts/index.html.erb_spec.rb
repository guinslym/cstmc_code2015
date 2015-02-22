require 'rails_helper'

RSpec.describe "artifacts/index", type: :view do
  before(:each) do
    assign(:artifacts, [
      Artifact.create!(
        :height => 1,
        :width => 2,
        :art_dataset_name => "Art Dataset Name",
        :art_location => "Art Location",
        :discipline_en => "Discipline En",
        :discipline_fr => "Discipline Fr",
        :catalogue_number => "Catalogue Number",
        :image_original => "Image Original",
        :image_thumbnail => "Image Thumbnail",
        :artifact_group_en => "Artifact Group En",
        :artifact_group_fr => "Artifact Group Fr",
        :artifact_category_en => "Artifact Category En",
        :artifact_category_fr => "Artifact Category Fr",
        :artifact_sub_category_en => "Artifact Sub Category En",
        :artifact_sub_category_fr => "Artifact Sub Category Fr",
        :artifact_composition_general_en => "Artifact Composition General En",
        :artifact_composition_general_fr => "Artifact Composition General Fr",
        :artifact_composition_specific_en => "Artifact Composition Specific En",
        :artifact_composition_specific_fr => "Artifact Composition Specific Fr",
        :artifact_date => "Artifact Date",
        :objname_en => "Objname En",
        :objname_fr => "Objname Fr",
        :artifact_references => "Artifact References"
      ),
      Artifact.create!(
        :height => 1,
        :width => 2,
        :art_dataset_name => "Art Dataset Name",
        :art_location => "Art Location",
        :discipline_en => "Discipline En",
        :discipline_fr => "Discipline Fr",
        :catalogue_number => "Catalogue Number",
        :image_original => "Image Original",
        :image_thumbnail => "Image Thumbnail",
        :artifact_group_en => "Artifact Group En",
        :artifact_group_fr => "Artifact Group Fr",
        :artifact_category_en => "Artifact Category En",
        :artifact_category_fr => "Artifact Category Fr",
        :artifact_sub_category_en => "Artifact Sub Category En",
        :artifact_sub_category_fr => "Artifact Sub Category Fr",
        :artifact_composition_general_en => "Artifact Composition General En",
        :artifact_composition_general_fr => "Artifact Composition General Fr",
        :artifact_composition_specific_en => "Artifact Composition Specific En",
        :artifact_composition_specific_fr => "Artifact Composition Specific Fr",
        :artifact_date => "Artifact Date",
        :objname_en => "Objname En",
        :objname_fr => "Objname Fr",
        :artifact_references => "Artifact References"
      )
    ])
  end

  it "renders a list of artifacts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Art Dataset Name".to_s, :count => 2
    assert_select "tr>td", :text => "Art Location".to_s, :count => 2
    assert_select "tr>td", :text => "Discipline En".to_s, :count => 2
    assert_select "tr>td", :text => "Discipline Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Catalogue Number".to_s, :count => 2
    assert_select "tr>td", :text => "Image Original".to_s, :count => 2
    assert_select "tr>td", :text => "Image Thumbnail".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Group En".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Group Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Category En".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Category Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Sub Category En".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Sub Category Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Composition General En".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Composition General Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Composition Specific En".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Composition Specific Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact Date".to_s, :count => 2
    assert_select "tr>td", :text => "Objname En".to_s, :count => 2
    assert_select "tr>td", :text => "Objname Fr".to_s, :count => 2
    assert_select "tr>td", :text => "Artifact References".to_s, :count => 2
  end
end
