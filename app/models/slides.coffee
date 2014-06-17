slides = [
  "Title Slide"
  "Why"
  "Avoid Downsides"
  "Enjoy Upsides"
  "Raw Ingredients"
  "Cache the code"
  "Sample Cache Manifest"
  "Cache Bootloader"
  "Store the data"
  "Remote Debugging"
]

Slide = Ember.Object.extend
  route: ((k,v) ->
    return v if arguments.length > 1
    @get('title').dasherize()
  ).property('title')

slideObjects = slides.map (s) ->
  if typeof(s) == 'string'
    Slide.create(title: s)
  else
    Slide.create(s)

`export default slideObjects`