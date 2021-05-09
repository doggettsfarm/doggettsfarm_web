class HomeController < ApplicationController
  ROUTES = %w[
    caravan-storage
    contact
    container-storage
    logs
    pod
].freeze

  def index; end

  def slug
    slug = params["slug"]
    if ROUTES.include?(slug)
      render slug.underscore and return
    end
    redirect_to "/"
  end
end
