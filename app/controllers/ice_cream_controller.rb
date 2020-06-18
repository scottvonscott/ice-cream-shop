class IceCreamController < ApplicationController


    get '/ice_creams' do
        @user = User.find_by_id(session[:user_id])
        erb :'/ice_cream/ice_cream'
    end

    get '/ice_creams/:id' do
        @ice_cream = IceCream.find_by_id(params[:id])
        erb :"ice_cream/show"
    end

end