class App.Models.Offer extends Backbone.Model
  parse: (res) ->
    if res.hasOwnProperty("response_data") then res.response_data else res


class App.Collections.OffersCollection extends Backbone.Collection
  model: App.Models.Offer
  url: '/api/deals'

  parse: (res) ->
    console.log res
    res.response_data
