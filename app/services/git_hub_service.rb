class GitHub
  def initialize
    @conn = Faraday.new(url:"https://api.github.com") do |faraday|
      faraday.headers[""]

    end
  end


  @conn = Faraday.new(url:"https://api.propublica.org") do |faraday|
    faraday.headers["X-API-Key"] = ENV["PROPUBLICA_API_KEY"]
    faraday.adapter Faraday.default_adapter
    # sometimes the response body doesnt show up
    # ^^^ sometimes when you do faraday.new and pass it a block it doesnt do the adapter === you wlll need to set the default adapter when performing do blocks ^^^
      #  adapter is the library it is using to connect and make the http request.
  end

end