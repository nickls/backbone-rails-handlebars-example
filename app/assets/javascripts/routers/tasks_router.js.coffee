class BackboneRailsHandlebarsExample.Routers.Tasks extends Backbone.Router
  routes:
    "tasks" : "index"

  initialize: (options = {}) ->
    if _.isObject(options)
      @tasks = new BackboneRailsHandlebarsExample.Collections.Tasks(options)
    else
      #if we don't preload data, auto fetch from DB.
      @tasks = new BackboneRailsHandlebarsExample.Collections.Tasks()
      @tasks.fetch()

  index: ->
    @taskIndexView = new BackboneRailsHandlebarsExample.Views.TasksIndex collection: @tasks