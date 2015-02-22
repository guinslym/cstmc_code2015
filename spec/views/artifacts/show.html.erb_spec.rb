require 'rails_helper'

RSpec.describe "artifacts/show", type: :view do
  before(:each) do
    @artifact = assign(:artifact, Artifact.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Art Dataset Name/)
    expect(rendered).to match(/Art Location/)
    expect(rendered).to match(/Discipline En/)
    expect(rendered).to match(/Discipline Fr/)
    expect(rendered).to match(/Catalogue Number/)
    expect(rendered).to match(/Image Original/)
    expect(rendered).to match(/Image Thumbnail/)
    expect(rendered).to match(/Artifact Group En/)
    expect(rendered).to match(/Artifact Group Fr/)
    expect(rendered).to match(/Artifact Category En/)
    expect(rendered).to match(/Artifact Category Fr/)
    expect(rendered).to match(/Artifact Sub Category En/)
    expect(rendered).to match(/Artifact Sub Category Fr/)
    expect(rendered).to match(/Artifact Composition General En/)
    expect(rendered).to match(/Artifact Composition General Fr/)
    expect(rendered).to match(/Artifact Composition Specific En/)
    expect(rendered).to match(/Artifact Composition Specific Fr/)
    expect(rendered).to match(/Artifact Date/)
    expect(rendered).to match(/Objname En/)
    expect(rendered).to match(/Objname Fr/)
    expect(rendered).to match(/Artifact References/)
  end
end
