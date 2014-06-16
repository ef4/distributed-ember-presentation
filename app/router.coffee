`import Ember from 'ember'`
`import slides from "presentation/models/slides"`

Router = Ember.Router.extend
  location: PresentationENV.locationType


Router.map ->
  # setup all the default simple slide routes
  for slide in slides
    unless slide.get('autoRoute') == false
      @resource(slide.get('route'))

  # any slides with more complicated needs have autoRoute==false, and
  # we set them up manually here:
  @resource 'parent-child-transition', ->
    @route 'detail', {path: '/:id'}


`export default Router`
