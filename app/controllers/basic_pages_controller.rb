class BasicPagesController < ApplicationController

   def home
    if logged_in?
      @guesthouse  = current_user.guesthouses.build
      @q = Guesthouse.ransack(params[:q])
      @guesthouses = @q.result(distinct: true).page(params[:page]).per(6)
    end
  end

  def about
  end
end
