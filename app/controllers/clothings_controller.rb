class ClothingsController < ApplicationController
  def new
  @clothing=Clothing.new
  end

  def show
  @clothing=Clothing.find(params[:id])
  end

  def edit
  @clothing=Clothing.find(params[:id])
  end

  def index
  @clothings=Clothing.all
  end

  def create
  @clothing=Clothing.new(clothing_params)
if @clothing.save
 flash[:notice] = "投稿に成功しました"
 redirect_to clothings_path
 else
 render:new
end
  end

  def destroy
  clothing=Clothing.find(params[:id])
  clothing.destroy
  redirect_to clothings_path
end

 def update
  @clothing=Clothing.find(params[:id])
  if @clothing.update(clothing_params)
    redirect_to clothings_path
    flash[:notice] = "編集に成功しました"
  else
    render:edit
  end
 end




  private
  def clothing_params
    params.require(:clothing).permit(:image, :reaction)
  end

end
