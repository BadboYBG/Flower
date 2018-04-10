class Admin::TypeFlowersController < Admin::BaseController
  before_action :set_type_flower, except: %i(new create index)

  def index
    @type_flowers = TypeFlower.list_categories.sort_alpha
  end

  def show; end

  def new
    @type_flower = TypeFlower.new
  end

  def edit; end

  def create
    @type_flower = TypeFlower.new type_flower_params
    if @type_flower.save
      redirect_to admin_type_flowers_url
    else
      render :new
    end
  end

  def update
    if @type_flower.update_attributes type_flower_params
      redirect_to admin_type_flowers_url
    else
      render :edit
    end
  end

  def destroy
    @type_flower.destroy
    redirect_to admin_type_flowers_url
  end

  private

  def set_type_flower
    @type_flower = TypeFlower.find_by id: params[:id]
  end

  def type_flower_params
    params.require(:type_flower).permit :name
  end
end
