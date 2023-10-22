class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
    @station_index = 0
    2.times { @apartment.stations.build }
  end

  def create
    @apartment = Apartment.new(apartment_params)
    
    if @apartment.save
      redirect_to apartments_path, notice: "物件情報を登録しました！"
    else
      render :new
    end
  end

  def show
  end

  def edit
    #ここがポイントになる。追加した時にアレをそれするやつ。
  end

  def update
  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path, notice: "物件情報を削除しました！"
  end

  private

  def apartment_params
    params.require(:apartment).permit(:apartment_name,
                                      :rent,
                                      :address,
                                      :building_age,
                                      :remark)
  end

  def station_params
    params.repuire(:station).permit(:line,
                                    :station_name,
                                    :minutes_on_foot)
  end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def set_station
  end
end
