class BackboneRailsHandlebarsExample.Models.Task extends Backbone.Model
  defaults:
    title: "Sample task"
    description: null
    complete: false
    created_at: new Date()