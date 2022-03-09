class ItemsController < ApplicationController    
    
    get '/items' do
        items = Item.all
        items.to_json
    end

    delete '/items/:id' do
        item = Item.find(params[:id])
        item.destroy
    end

    post '/items' do
        item = Item.create(title:params[:title],quantity:params[:quantity])
        item.to_json
    end

    patch '/items/:id' do
        items = Item.find(params[:id])
        items.update(
            title: params[:title],
            quantity: params[:quantity]
        )
        items.to_json
    end


end 