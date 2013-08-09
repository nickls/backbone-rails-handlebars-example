class BackboneRailsHandlebarsExample.Views.TasksItem extends Backbone.View
  tagName: "tr",
  className: 'taskitem'
  template: JST['tasks/item']
  attributes: ->
    "data-taskid": @model.get("id")

  #
  # View initialisation & Rendering
  #
  initialize: (options) ->
    Handlebars.registerHelper('isComplete', @isComplete)


  render: ->
    #XXX I like passing in the model as it allows me to model ready to 
    #update or change, otherwise I have to save the id in the DOM and lookup the model each time.
    #The other option is passing in a json blob, this makes the templates cleaner but events more difficult.
    #@$el.html @template @model.toJSON()
  
    #render model
    @$el.html @template @model
    @

  #
  # Event Handlers
  #
  events:
    "click input" : "toggleCompleted"

  toggleCompleted: (evt) ->
    @model.save({complete: !@model.get('complete')}, {partialUpdate: true})
    event.stopPropagation()

  remove: () ->
    $(@el).fadeOut 'slow', () =>
      $(@el).remove()