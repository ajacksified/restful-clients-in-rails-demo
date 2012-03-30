class App.Routers.Router extends Backbone.Router
  initialize: (options) ->
    @view = {}

  routes:
    "offers"    : "index"
    "offers/:id": "show"

  changeRoute: (path) =>
    this.navigate(path, { trigger: true })

  index: ->
    offers = new App.Collections.OffersCollection()

    @view = new App.Views.Offers.IndexView(model: offers, el: $("#content"))
    @view.bind("changeRoute", @changeRoute)

    offers.fetch()

  show: (id) ->
    offers = new App.Collections.OffersCollection()
    offer = new App.Models.Offer({ id: id })
    offers.add(offer)

    @view = new App.Views.Offers.ShowView(model: offer, el: $("#content"))
    @view.bind("changeRoute", @changeRoute)

    offer.fetch()
