App.Views.Offers ||= {}

class App.Views.Offers.ShowView extends Backbone.View
  template: HoganTemplates['offers/show']

  events:
    "click a": "route"

  route: (e) =>
    href = $(e.target).attr("href")

    unless(href[0..3] == 'http')
      e.preventDefault()
      @trigger("changeRoute", href)

  initialize: () ->
    @model.bind('change', @render)

  render: =>
    html = @template.render({ offer: @model.toJSON() }, { offer_info: HoganTemplates['offers/_offer_info'] })
    @$el.html(html)
