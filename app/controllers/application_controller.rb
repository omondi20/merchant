class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def load_order
    @order = Order.find_or_initialize_by_id(session[:order_id],
                                              status: "unsubmitted", user_id: session[:user_id])
    if @order.new_record?
      @order.save!
      session[:order_id] = @order.id
    end
  end
end
