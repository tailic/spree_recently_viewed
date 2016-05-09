Spree::ProductsController.class_eval do
  after_filter :add_recently_viewed, :only => :show

  def recently_viewed
      render 'spree/shared/_recently_viewed_products', layout: false
  end

  def add_recently_viewed
    id = @product.id
    products = (session['recently_viewed_products'] || '').split(', ')
    products.delete(id)
    products << id unless products.include?(id.to_s)
    products_max_count = 20
    products.delete_at(0) if products.size > products_max_count.to_i
    session['recently_viewed_products'] = products.join(', ')
  end

end