class Admin::DesignsController < Admin::BaseController
  before_action :set_design, except: %i(new create index)

  def index
    @designs = Design.list_categories.sort_alpha
  end

  def show; end

  def new
    @design = Design.new
  end

  def edit; end

  def create
    @design = Design.new design_params
    if @design.save
      redirect_to admin_designs_url
    else
      render :new
    end
  end

  def update
    if @design.update_attributes design_params
      redirect_to admin_designs_url
    else
      render :edit
    end
  end

  def destroy
    @design.destroy
    redirect_to admin_designs_url
  end

  private

  def set_design
    @design = Design.find_by id: params[:id]
  end

  def design_params
    params.require(:design).permit :name
  end
end
