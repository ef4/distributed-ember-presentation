C = Ember.ArrayController.extend
  queryParams:['modalDemo']
  modalDemo: false

  jumpSlides: (n) ->
    slides = @get('model')
    currentRoute = @get('currentRouteName').split('.')[0]
    currentIndex = slides.indexOf(slides.find (s) -> s.get('route') == currentRoute)
    nextSlide = slides[currentIndex + n]
    if nextSlide
      @transitionToRoute(nextSlide.get('route'))

  showingModalDemo: ((k,v)->
    return v if arguments.length > 1
    if not @get('modalDemo') and (mp = $('.modal-popup')).length > 0 and not mp.is('.away')
      mp.addClass('away')
      mp.one 'webkitAnimationEnd', => @set('showingModalDemo', false)
      true
    else
      @get('modalDemo')
  ).property('modalDemo')


  actions:
    nextSlide: -> @jumpSlides(1)
    previousSlide: -> @jumpSlides(-1)


  installKeys: (->
    $('body').on 'keydown', (e) =>
      switch e.keyCode
        when 37 # left
          @send('previousSlide')
        when 39 # right
          @send('nextSlide')
        else
          console.log e.keyCode
  ).on('init')

`export default C`