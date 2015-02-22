# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#====================================
#=====================
#===========
Artifact.delete_all

  def on_heroku_upload_this_file_to_the_db
    file = File.read("artefact_for_heroku_db.json")
    data_hash = JSON.parse(file)

    data_hash.each do |data|

    Artifact.create(
        discipline_en: data['discipline_en'],
        discipline_fr: data['discipline_fr'],
        catalogue_number: data['catalogue_number'],
        image_original: data['image_original'],
        image_thumbnail: data['image_thumbnail'],
        artifact_group_en: data['artifact_group_en'],
        artifact_group_fr: data['artifact_group_fr'],
        artifact_category_en:  data['artifact_category_en'],
        artifact_category_fr:  data['artifact_category_fr'],
        artifact_sub_category_en: data['artifact_sub_category_en'],
        artifact_sub_category_fr: data['artifact_sub_category_fr'],
        artifact_composition_general_en: data['artifact_composition_general_en'],
        artifact_composition_general_fr: data['artifact_composition_general_fr'],
        artifact_composition_specific_en: data['artifact_composition_specific_en'],
        artifact_composition_specific_fr: data['artifact_composition_specific_fr'],
        artifact_date: data['artifact_date'],
        objname_en: data['objname_en'],
        objname_fr: data['objname_fr']  ,
        artifact_references: data['artifact_references'],
        art_dataset_name: data['art_dataset_name'],
        art_location: data['art_location']
      )
    end
    
    puts "created #{objname_en}"
  end

  #calling the function
  on_heroku_upload_this_file_to_the_db()

puts "Voilà!"