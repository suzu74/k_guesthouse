class GuesthousesController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def index
    @guesthouses = Guesthouse.all.page(params[:page]).per(6)
  end

  def show
    @guesthouse = Guesthouse.find(params[:id])
  end

  def create
    @guesthouse = current_user.guesthouses.build(guesthouse_params)
    if @guesthouse.save
      flash[:success] = "投稿されました!"
      redirect_to root_url
    else
      @guesthouses = Guesthouse.all
      flash[:warning] = "必要な箇所が入力されていません"
      redirect_to root_path
    end
  end

  def destroy
    @guesthouse.destroy
    flash[:success] = "投稿が削除されました"
    redirect_to request.referrer || root_url
  end

  private

    def guesthouse_params
      params.require(:guesthouse).permit(:content, :picture, :name)
    end

    def correct_user
      @guesthouse = current_user.guesthouses.find_by(id: params[:id])
      redirect_to root_url if @guesthouse.nil?
    end
end
