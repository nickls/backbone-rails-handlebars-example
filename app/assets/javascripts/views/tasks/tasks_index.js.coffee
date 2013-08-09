class BackboneRailsHandlebarsExample.Views.TasksIndex extends Backbone.View
  el: '#backbone-tasks'
  template: JST['tasks/index']
  inprogress_class: '#tasks-in-progress'

  #
  # View initialisation & Rendering
  #
  initialize: (options) ->
    @collection.bind 'reset', @reset, @
    
    #force reset if the collection has pre-loaded data.
    @reset() if @collection.length > 0

  render: ->
    @$el.html @template()
    @

  _elementFromModel: (model) ->
    view = new BackboneRailsHandlebarsExample.Views.TasksItem model: model
    res = view.render().el
    $(res).hide()
    return res

  #path for rendering a pre-loaded collection, see addCreatedTask for live add.
  addOne: (model) ->
    res = @_elementFromModel(model)
    @$el.find(@inprogress_class).append $(res).fadeIn('slow')            

  #add everything from a pre-loaded collection, or sync.
  addAll: ->
    @collection.forEach(@addOne, @)

  #all I have is a hammer.
  reset: ->
    @render()
    @addAll()