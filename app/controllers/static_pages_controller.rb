class StaticPagesController < ApplicationController
  def index
  	puts "session is #{session.inspect}"
  end
end
