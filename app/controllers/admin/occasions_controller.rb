class Admin::OccasionsController < Admin::BaseController
  before_action :set_occasion, except: %i(new create index)

  def index
    @occasions = Occasion.list_categories.sort_alpha
  end

  def show; end

  def new
    @occasion = Occasion.new
  end

  def edit; end

  def create
    @occasion = Occasion.new occasion_params
    if @occasion.save
      redirect_to admin_occasions_url
    else
      render :new
    end
  end

  def update
    if @occasion.update_attributes occasion_params
      redirect_to admin_occasions_url
    else
      render :edit
    end
  end

  def destroy
    @occasion.destroy
    redirect_to admin_occasions_url
  end

  private

  def set_occasion
    @occasion = Occasion.find_by id: params[:id]
  end

  def occasion_params
    params.require(:occasion).permit :name
  end
end
