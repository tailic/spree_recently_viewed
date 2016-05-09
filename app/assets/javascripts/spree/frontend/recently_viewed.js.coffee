$ ->
  $('.async.recently-viewed-products').load location.pathname + '/recently_viewed', ->
    $frame = $ '.recently_viewed_products .product-carousel-frame'
    $wrap = $frame.parent()
    $frame.slick
      slidesToShow: 5
      slidesToScroll: 5
      infinite: false
      speed: 200
      prevArrow: $wrap.find('.prev')
      nextArrow: $wrap.find('.next')
      responsive: [
        {
          breakpoint: 1200
          settings:
            slidesToShow: 4
            slidesToScroll: 4
        }
        {
          breakpoint: 992
          settings:
            slidesToShow: 3
            slidesToScroll: 3
        }
        {
          breakpoint: 768
          settings:
            slidesToShow: 2
            slidesToScroll: 2
        }
        {
          breakpoint: 480
          settings:
            slidesToShow: 1
            slidesToScroll: 1
        }
        {
          breakpoint: 320
          settings:
            slidesToShow: 1
            slidesToScroll: 1
        }
      ]