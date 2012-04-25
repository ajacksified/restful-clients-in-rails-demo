describe "Offer", ->
  @xhr = {}
  requests = []

  beforeEach(() ->
    @xhr = sinon.useFakeXMLHttpRequest()
    requests = [];

    @xhr.onCreate = (xhr)  ->
      requests.push(xhr);
  )

  afterEach(() ->
    @xhr.restore()
  )

  it "exists", ->
    v = new App.Models.Offer()
    expect(v).not.toBe(null)

  it "parses json in the format { responseData: { ... }}", ->
    vc = new App.Collections.OffersCollection()
    vc.fetch()

    requests[0].respond(200, { "Content-Type": "application/json" }, '{ "response_data": [{ "id": 12, "comment": "Hey there" }] }');

    expect(vc.first().get("id")).toBe(12)
