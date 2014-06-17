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
  "Objects and relations"
  "Sync"
  "Some Ember Patterns"
  "State is a liability"
  "Big Picture Why"
  "Its Over"
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