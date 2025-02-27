class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private
  
    def set_coupon
      @coupon = Coupon.find_by_id(params[:id])
    end
end
