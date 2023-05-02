class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/posts" do
    webcomics = Webcomic.all.order(:title)
    webcomics.to_json
  end

  get "/creators" do
    creators = Creator.all.order(:name)
    creators.to_json
  end
  
  get "/creators/:id" do
    creator = Creator.find(params[:id])
    creator.to_json
  end

  get "/posts/:id" do
    webcomic = Webcomic.find(params[:id])

    webcomic.to_json(only: [:id, :title, :description, :creator_id, :price])
  end

  post "/posts" do
    webcomic = Webcomic.create(
      title: params[:title],
      creator_id: params[:creator_id],
      genre: params[:genre],
      description: params[:description],
      price: params[:price]
    )
    webcomic.to_json

  end

  patch "/posts/:id" do
    webcomic = Webcomic.find(params[:id])
    webcomic.update(
      description: params[:description]
    )
    webcomic.to_json
  end

  delete "/posts/:id" do
    webcomic = Webcomic.find(params[:id])
    webcomic.destroy
    webcomic.to_json
  end

end
