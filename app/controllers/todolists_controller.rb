class TodolistsController < ApplicationController
  def new
  	@list = List.new
  end

  def creat

  	list = List.new(list_params)

  	list.save

  	redirect_to '/top'

  end

  private

  def list

  	params.require(:list).parmit(:title,:body)
  	
  end

end
