class ArtifactsController < ApplicationController
  before_action :set_artifact, only: [:show]

  respond_to :html
  respond_to :json

def index
    @search = Artifact.search(params[:q])
    if(!params[:q].nil?)
    @search = Artifact.search(params[:q])
    @artifacts = @search.result.page(params[:page]).per(25)
 @search.build_condition if @search.conditions.empty?
@search.build_sort if @search.sorts.empty?
    respond_with(@artifacts)
  else
    @artifacts = Artifact.page(params[:page]).per(25)
    respond_with(@artifacts)
  end
=begin
  if params[:search]
    @artifacts = Artifact.recherche(params[:search]).page(params[:page]).per(25)
    respond_with(@artifacts)
    #render layout: "bienvenue"
  else
    @artifacts = Artifact.readonly.all.page(params[:page]).per(25)
    respond_with(@artifacts)
    #render layout: "bienvenue"
  end
=end
end




  def show
    #offset = rand(Artifact.count)
    #@artifact = Artifact.offset(offset).first
    @artifact
    render layout: "main"
  end

  def new
    @artifact = Artifact.new
    respond_with(@artifact)
  end

  def edit
  end

  def create
    @artifact = Artifact.new(artifact_params)
    @artifact.save
    respond_with(@artifact)
  end

  def update
    @artifact.update(artifact_params)
    respond_with(@artifact)
  end

  def destroy
    @artifact.destroy
    respond_with(@artifact)
  end

  private
    def set_artifact
      @artifact = Artifact.find(params[:id])
    end

    def artifact_params
      params.require(:artifact).permit(:height, :width, :art_dataset_name, :art_location, :discipline_en, :discipline_fr, :catalogue_number, :image_original, :image_thumbnail, :artifact_group_en, :artifact_group_fr, :artifact_category_en, :artifact_category_fr, :artifact_sub_category_en, :artifact_sub_category_fr, :artifact_composition_general_en, :artifact_composition_general_fr, :artifact_composition_specific_en, :artifact_composition_specific_fr, :artifact_date, :objname_en, :objname_fr, :artifact_references)
    end
end
