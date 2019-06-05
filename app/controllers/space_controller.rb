class SpaceController < ApplicationController
    def show
        @spaces = Space.all
    end
    def create
        require 'securerandom'
        @spaces = Space.new
        @spaces.name = params[:name]
        @spaces.author = params[:author]
        @spaces.code = SecureRandom.hex(2)
        @spaces.explanation = params[:info]
        @spaces.save
        redirect_to '/space/show'
        
        # space = Space.find_by(code: @spaces.code)
        # if space
        # space_in(space)
        # redirect_to '/space/show'
        # else
        # flash.now[:danger] = 'Invalid email/password combination'
        # render '/home/index'
        # end
        
    end
    def message
        @message = Message.new
        @messages = Message.where space: params[:spacecode]
      end
    def destroy
        @space = Space.find_by(code: params[:format])
        @space.destroy
        redirect_to '/space/show'
    end
end
