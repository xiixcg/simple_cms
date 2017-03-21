class DemoController < ApplicationController

	layout false
  def index
  	render('index')
  end

  def hello
  	@array = [1,2,3,4,5]
  	@id = params['id']
  	@page = params[:page]
  	render('hello')
  end

  def other_hello
  	redirect_to(:action => 'index')
  end

#redirect to different controller
  def young_base
  	redirect_to(:controller => 'young_testing', :action => 'base')
  end

#redirect to different website
  def lynda
  	redirect_to('http://lynda.com')
  end

end
