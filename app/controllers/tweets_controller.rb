class TweetsController < ApplicationController

    get '/tweets' do
        if logged_in?
            erb :'/tweets/tweets'
        else
            redirect to '/login'
        end
    end

    get '/tweets/new' do
        if logged_in?
            erb :'/tweets/new'
        else
            redirect to '/login'
        end
    end

    post '/tweets' do
        if !params[:content].empty?
            @tweet = Tweet.create(params)
            @tweet.user_id = current_user.id
            @tweet.save
            redirect to '/tweets'
        else
            redirect to '/tweets/new'
        end
    end

    

end
