class UserController < ApplicationController

    get '/users/new' do

        erb :"users/new"

    end

    get '/users/login' do

        erb :"users/login"
    end

    post '/users' do
        user = User.create(params)
        sessions[:user_id] = user.id
        redirect '/ice_creams'
    end

end