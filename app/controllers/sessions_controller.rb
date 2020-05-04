class SessionsController < ApplicationController

  def new
  end

  def create
    # return redirect_to(controller: 'sessions',
    #                    action: 'new') if !params[:name] || params[:name].empty?
    
    # why are both these conditions necessary?
    if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    end
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end