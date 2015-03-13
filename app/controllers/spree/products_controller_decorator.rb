Spree::ProductsController.class_eval do
  after_filter :recently_viewed, :only => :show

  def recently_viewed
    id = @product.id
    rvp = (session['recently_viewed_products'] || '').split(', ')
    rvp.delete(id)
    rvp << id unless rvp.include?(id.to_s)
    rvp_max_count = 20
    rvp.delete_at(0) if rvp.size > rvp_max_count.to_i
    session['recently_viewed_products'] = rvp.join(', ')
  end

end