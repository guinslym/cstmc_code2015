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

if Rails.env.production?  

  def on_heroku_upload_this_file_to_the_db
    file = File.read("artefact_for_heroku_db.json")
    data_hash = JSON.parse(file)

    data_hash.each do |data|

    Artifact.create(
        discipline_en: dat['discipline_en'],
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

  end

else#if Rails.env.production?  


  puts "creating Artifact"


  files =  Dir.entries("db/artefact_seed/")
  files.each do |n|
    if n.size < 5
      files.delete(n)
    end
  end


  def populate_array(data, language)
    cummulator  = []
    data.each {|n| cummulator.push(n[language])}
    return cummulator
  end

  def assign_unidentify_objname(data, language)
    value = (data['objname'][language]).nil? ? 'Unidentified artifact' : (data['objname'][language])
    if value.eql?('en')
    	if language.eql?('en')
    		return 'Unidentified artifact'
    	else
    		return 'Artefact non identifié'
    	end#if#2
    else
    	return value
    end#if#1
  end
  ###############


  ################
  def parse_the_json_file_to_db(json_file_name)
    file = File.read("db/artefact_seed/"+json_file_name)
    data_hash = JSON.parse(file)

    data_hash.each do |data|

    artifact = Artifact.create(
  discipline_en: data['discipline']['en'],
  discipline_fr: data['discipline']['fr'],
  catalogue_number: data['catalogue_number'],
  image_original: data['image']['image_link'],
  image_thumbnail: data['image']['image_thumbnail'],
  artifact_group_en: populate_array(data['artefacts_group'], 'en'),
  artifact_group_fr: populate_array(data['artefacts_group'], 'fr'),
  artifact_category_en:  populate_array(data['artefacts_categorie'], 'en'),
  artifact_category_fr:  populate_array(data['artefacts_categorie'], 'fr'),
  artifact_sub_category_en: populate_array(data['artefacts_sub_categorie'], 'en'),
  artifact_sub_category_fr: populate_array(data['artefacts_sub_categorie'], 'fr'),
  artifact_composition_general_en: populate_array(data['artefacts_composition_general'], 'en'),
  artifact_composition_general_fr: populate_array(data['artefacts_composition_general'], 'fr'),
  artifact_composition_specific_en: populate_array(data['artefacts_composition_specific'], 'en'),
  artifact_composition_specific_fr: populate_array(data['artefacts_composition_specific'], 'fr'),
  artifact_date: data['assigned_date'],
  objname_en: assign_unidentify_objname(data, 'en') ,
  objname_fr: assign_unidentify_objname(data, 'fr')  ,
  artifact_references: data['artefact_references'],
  art_dataset_name: data['dataset_name'],
  art_location: data['art_location']
       )
      puts artifact.objname_en
  #puts " : #{data['image']['image_link']} "
      #Create it in the db
    end#data_hash.each
  end#def

  files.each {|f| parse_the_json_file_to_db(f) }

  puts Artifact.count


  #Delete duplicates images
  #Some Artifacts share the same Images so I'll delete the DUPLICATE
  #this function is slow... 
  #it's 2 o'clock in the morning ... I can't think much???

  puts "\n\nYou need to go to db/seeds.rb and Uncomment the last Code"
  puts "To remove the duplicates....\n\n\t\t ----db/seeds.b Takes: 1hr30min---\n"
=begin
#dump this variable into a json file after
collect_all_the_duplicate = []

compte = 0
Artifact.all.to_a.each do |n|
  image = n.image_original
  thumb = n.image_thumbnail
  count_value =  Artifact.where(:image_original => image, :image_thumbnail => thumb).all.to_a.count
  if count_value > 1
    n.destroy!
    puts "need to delete this image"
    puts count_value
    collect_all_the_duplicate.push(n)
  end
  compte = compte +1
  puts compte
end

###Feeling too lazy to rewrite the code above
#here is a hint
#@distinct_artifacts = @all_artifacts.uniq {|artifact| artifact.image_original && artifact.image_thumbnail}

a = []
a = a.to_hash
collect_all_the_duplicate.each {|n| a.push(n.inspect) }
  File.open("artefact_with_duplicate_images.json", "w") do |f|
    f.write(JSON.pretty_generate(a))
  end
=end


  a = Artifact.all.to_a

  Artifact.all.to_a.each {|n| a.push(n.inspect) }

    File.open("artefact_for_db.json", "w") do |f|
      f.write(JSON.pretty_generate(Artifact.all.to_a))
    end

  def creating_a_json_file_for_heroku()

  artifacts  = Artifact.all.to_a.each
  @arts = []

    artifacts.each do |data|

      a={
      discipline_en: data.discipline_en,
      discipline_fr: data.discipline_fr,
      catalogue_number: data.catalogue_number,
      image_original: data.image_original,
      image_thumbnail: data.image_thumbnail,
      artifact_group_en: data.artifact_group_en,
      artifact_group_fr: data.artifact_group_fr,
      artifact_category_en:  data.artifact_category_en,
      artifact_category_fr:  data.artifact_category_fr,
      artifact_sub_category_en: data.artifact_sub_category_en,
      artifact_sub_category_fr: data.artifact_sub_category_fr,
      artifact_composition_general_en: data.artifact_composition_general_en,
      artifact_composition_general_fr: data.artifact_composition_general_fr,
      artifact_composition_specific_en: data.artifact_composition_specific_en,
      artifact_composition_specific_fr: data.artifact_composition_specific_fr,
      artifact_date: data.artifact_date,
      objname_en: data.objname_en,
      objname_fr: data.objname_fr  ,
      artifact_references: data.artifact_references,
      art_dataset_name: data.art_dataset_name,
      art_location: data.art_location

      }
      @arts.push(a)
      puts a
    end

    File.open("artefact_for_heroku_db.json", "w") do |f|
      f.write(JSON.pretty_generate(@arts))
    end

    puts @arts.count
    puts artifacts.count

  end


end#if Rails.env.production?  

