class StaticPagesController < ApplicationController
  def home
    @micropost = Micropost.first
  end
end
