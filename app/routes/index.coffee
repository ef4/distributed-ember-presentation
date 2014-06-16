`import slides from "presentation/models/slides"`

IndexRoute = Ember.Route.extend
  beforeModel: -> @transitionTo slides[0].get('route')

`export default IndexRoute`
