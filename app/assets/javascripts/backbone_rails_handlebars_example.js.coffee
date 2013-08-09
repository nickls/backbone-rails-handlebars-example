window.BackboneRailsHandlebarsExample =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (data) ->
    #alert 'Hello from Backbone!'

    window.router = new BackboneRailsHandlebarsExample.Routers.Tasks(data)

    pushState = !!(window.history && window.history.pushState)
    if !pushState && window.location.pathname != "/"
      window.location += '#' + window.location.pathname
    settings = { pushState: pushState, hashChange: (!pushState ? true : false)};
    Backbone.history.start(settings);

# We can either init globally or just on pages that need/support it.
# $(document).ready ->
#   BackboneRailsHandlebarsExample.initialize()