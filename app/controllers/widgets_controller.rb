class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show, :edit, :update, :destroy]

  # GET /widgets
  def index
    @widgets = Widget.all
  end

  # GET /widgets/1
  def show
  end

  # GET /widgets/new
  def new
    @widget = Widget.new
  end

  # GET /widgets/1/edit
  def edit
  end

  # POST /widgets
  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to @widget, notice: 'Widget was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /widgets/1
  def update
    if @widget.update(widget_params)
      redirect_to @widget, notice: 'Widget was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /widgets/1
  def destroy
    @widget.destroy
    redirect_to widgets_url, notice: 'Widget was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget
      @widget = Widget.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def widget_params
      params.require(:widget).permit(:cog, :gear, :axle)
    end
end
