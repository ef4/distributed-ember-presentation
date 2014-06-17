R = Ember.Controller.extend
  actions:
    clearVideo: ->
      $('video').remove()
      null

`export default R`