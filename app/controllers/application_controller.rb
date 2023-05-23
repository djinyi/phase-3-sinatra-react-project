class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/posts" do
    webcomics = Webcomic.all.order(:name)
    webcomics.to_json(include: {creator: {only: [:name]}})
  end

  get "/creators" do
    creators = Creator.all.order(:name)
    creators.to_json(include: {webcomics: {only: [:title]}})
  end
  
  get "/creators/:id" do
    creator = Creator.find(params[:id])
    creator.to_json
  end

  post "/creators" do
    creator = Creator.create(
      name: params[:name]
    )
    creator.to_json
  end

  get "/posts/:id" do
    webcomic = Webcomic.find(params[:id])

    webcomic.to_json(only: [:id, :title, :description, :creator_id, :price, :image])
  end

  post "/posts" do
    webcomic = Webcomic.create(
      title: params[:title],
      genre: params[:genre],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      creator_id: params[:creator_id]
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

  delete "/creators/:id" do
    creator = Creator.find(params[:id])
    creator.destroy
    creator.to_json
  end

  put "/creators/:id" do
    creator = Creator.find(params[:id])
    creator.update(
      id: params[:id]
    )
    creator.to_json
  end

end
