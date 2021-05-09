Rails.application.routes.draw do
  root to: "home#index"
  get "*slug", to: "home#slug"
end
