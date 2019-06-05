class MemberController < ApplicationController
  def signup
    @signups = Signup.all.reverse
  end
  def create
    @member = Signup.new
    @member.userid = params[:userid]
    @member.password = params[:password]
    @member.company = params[:company]
    @member.tel = params[:tel]
    @member.email = params[:email]
    @member.save
    redirect_to root_url
  end
  def login
    @member = Signup.find(params[:email])
    end
end
