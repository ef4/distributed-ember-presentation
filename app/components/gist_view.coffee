GistViewComponent = Ember.Component.extend
  gist: ((k,v)->
    return v if arguments.length > 1
    $.ajax({
      url: @get('src')
      dataType: 'jsonp', success: (gist) => @set('gist', gist)
    })
    null
  ).property('src')


`export default GistViewComponent`