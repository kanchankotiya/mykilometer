class Vendors::InvitationsController < Devise::InvitationsController
  def update
    super
    redirect_to root_path
  end

  def new
    @event = Event.find(params[:event])
    super
  end
end