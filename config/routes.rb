Spree::Core::Engine.routes.draw do
  get 'products/:id/recently_viewed' , to: 'products#recently_viewed', as: :recently_viewed
end
