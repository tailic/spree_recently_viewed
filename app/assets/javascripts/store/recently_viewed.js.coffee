$ ->
  $frame = $ "#recently_viewed_frame"
  $wrap = $frame.parent()
  $slidee = $frame.children('ul').eq(0);

  $frame.sly
    horizontal: 1
    itemNav: 'basic'
    smart: 1
    activateOn: 'click'
    mouseDragging: 1
    touchDragging: 1
    releaseSwing: 1
    elasticBounds: 1
    easing: 'easeOutExpo'
    dragHandle: 1
    dynamicHandle: 1
    clickBar: 1
    scrollBar: $wrap.find('.scrollbar')
    scrollBy: 1
    pagesBar: $wrap.find('.pages')
    activatePageOn: 'click'
