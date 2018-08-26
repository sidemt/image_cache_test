class MicropostsController < ApplicationController

  def show
    redirect_to edit_micropost_path
  end

  def edit
    @micropost = Micropost.find(params[:id])
  end
  
  def update
    @micropost = Micropost.find(params[:id])
    if @micropost.update_attributes(micropost_params)
      # If the micropost is successfully updated
      flash[:success] = "Updated!"
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  private
  
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
