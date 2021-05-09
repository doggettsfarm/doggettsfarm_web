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
    render slug.underscore if ROUTES.include?(slug)
    redirect_to "/"
  end
end
