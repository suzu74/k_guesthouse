class BasicPagesController < ApplicationController

   def home
    if logged_in?
      @guesthouse  = current_user.guesthouses.build
      @guesthouses = Guesthouse.page(params[:page]).per(6)
    end
  end

  def about
  end
end
