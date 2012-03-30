App.Views.Offers ||= {}

class App.Views.Offers.IndexView extends Backbone.View
  template: HoganTemplates['offers/index']

  events:
    "submit form": "jump"
    "click a": "route"

  initialize: () ->
    @model.bind('reset', @render)

  render: =>
    html = @template.render({ offers: @model.toJSON() }, { offer_info: HoganTemplates['offers/_offer_info'] })
    @$el.html(html)

  jump: (e) =>
    e.preventDefault()
    id = @$el.find("#offer_id").val()
    @trigger("changeRoute", "offers/#{id}")

  route: (e) =>
    href = $(e.target).attr("href")

    unless(href[0..3] == 'http')
      e.preventDefault()
      @trigger("changeRoute", href)
