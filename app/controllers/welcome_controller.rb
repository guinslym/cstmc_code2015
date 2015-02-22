class WelcomeController < ApplicationController
  #before_action :set_artefact, only: [:download_jpeg]

  respond_to :html


  def index
    @search = Artifact.search(params[:q])
    render layout: "essaie"
  end

  def download_pdf
  	#Doesnt need the pdf .. this is extra in this project
    send_file(
      "#{Rails.root}/public/your_file.pdf",
      filename: "your_custom_file_name.pdf",
      type: "application/pdf"
    )
  end

#advance multi-select form
=begin
def advanced_search
    @search = Artifact.search(params[:q])
    if(!params[:q].nil?)
    @search = Artifact.search(params[:q])
    @artifacts = @search.result.page(params[:page]).per(25)
 @search.build_condition if @search.conditions.empty?
@search.build_sort if @search.sorts.empty?
    respond_with(@artifacts)
  else
    @search.build_condition if @search.conditions.empty?
    @artifacts = Artifact.page(params[:page]).per(25)
    respond_with(@artifacts)
  end
end
=end

def advanced_search
@search = Artifact.search(params[:q])
#@search.build_condition
    @artifacts = @search.result
end

  def download_jpeg
    #http://localhost:3000/welcome/download_jpeg?id=54e9251b6775695f04295f00&locale=fr
    parameters = params.keys

    if parameters.include?('id')  #params must only accept 'id'
    	require 'open-uri'
      @artefact = Artifact.where(:id => params[:id]).first
    	url = @artefact.image_original
      filename = 'can-tech-museum-' + @artefact.catalogue_number + ".jpg"#url.split('/')[-1]
    	begin
        data = open(url).read
    	  send_data data, :disposition => 'attachment', :filename => filename
      rescue OpenURI::HTTPError
        url = 'http://source.techno-science.ca/images/1986.0468.001.aa.cs.jpg'
        data = open(url).read
        send_data data, :disposition => 'attachment', :filename => 'wrong-parameter.jpeg'
      end
    else
      #send a random image
      require 'open-uri'
      url = 'http://source.techno-science.ca/images/1986.0468.001.aa.cs.jpg'
      data = open(url).read
      send_data data, :disposition => 'attachment', :filename => 'wrong-parameter.jpeg'
    end
  end

  def recherche
     @search = Artifact.search(params[:q])
    if(!params[:q].nil?)
    @search = Artifact.search(params[:q])
    @artifacts = @search.result
    @search.build_condition
    respond_with(@artifacts)
  else
    @artifacts = Artifact.limit(40)
  end

  end




end
