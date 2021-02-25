class RentsController < ApplicationController
  before_action :set_rent, only:[:show, :edit, :update, :destroy]  
    def index
      @rents = Rent.all
    end
    def new
      @rent = Rent.new
      2.times { @rent.stations.build }
    end
    def create
      @rent = Rent.new(rent_params)
      if @rent.save
        redirect_to rents_path, notice:"投稿を作成しました。"
      else
        render 'new'
      end
    end
    def show
      @station = @rent.stations
    end
    def edit
      @rent.stations.build
    end
    def update
      if @rent.update(rent_params)
        redirect_to rents_path, notice:"投稿を編集しました。"
      else
        render 'edit'
      end
    end
    def destroy
      @rent.destroy
      redirect_to rents_path, notice:"削除しました！"
    end

    private
    def rent_params
      params.require(:rent).permit(:name,:price,:address,:age,:content,stations_attributes:[:id, :route_name,:station_name,:walk,:rent_id,:_destroy])
    end
    def set_rent
      @rent = Rent.find(params[:id])
    end
end