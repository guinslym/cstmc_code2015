Rails.application.routes.draw do

  scope "(:locale)" do
    resources "artifacts", only: [:index, :show] do
      collection { post :search, to: 'artifacts#search' }
    end
  end
  
  resources "artifacts", only: [:index, :show] do
    collection { post :search, to: 'artifacts#search' }
  end

  get 'artifacts/index'
  get 'welcome/advanced_search'
  get 'artifacts/show'
  get 'welcome/index'
  get 'welcome/recherche'
  get "welcome/download_pdf"
  get "welcome/download_jpeg" => 'welcome#download_jpeg'

  root 'welcome#index'
  get "*path" => redirect("/")
end
