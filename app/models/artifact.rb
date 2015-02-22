class Artifact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :height, type: Integer
  field :width, type: Integer
  field :art_dataset_name, type: String
  field :art_location, type: String
  field :discipline_en, type: String
  field :discipline_fr, type: String
  field :catalogue_number, type: String
  field :image_original, type: String
  field :image_thumbnail, type: String
  field :artifact_group_en, type: String
  field :artifact_group_fr, type: String
  field :artifact_category_en, type: String
  field :artifact_category_fr, type: String
  field :artifact_sub_category_en, type: String
  field :artifact_sub_category_fr, type: String
  field :artifact_composition_general_en, type: String
  field :artifact_composition_general_fr, type: String
  field :artifact_composition_specific_en, type: String
  field :artifact_composition_specific_fr, type: String
  field :artifact_date, type: String
  field :objname_en, type: String
  field :objname_fr, type: String
  field :artifact_references, type: String

  paginates_per 50
  max_paginates_per 50
  #default_scope { order('height ASC') }

  def self.recherche(query)
    #where("objname like ?", "%#{query}%") 
  end

  def self.landscape
    return self.width > self.height
  end

end
