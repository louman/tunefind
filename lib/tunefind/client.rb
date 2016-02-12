module Tunefind
  class Client
    def initialize(username, password)
      @username = username
      @password = password
    end

    def get(path)
      JSON.load(RestClient::Request.new(
        method: :get,
        url: build_url(path),
        user: @username,
        password: @password,
        headers: { accept: :json, content_type: :json }
      ).execute)
    end

    private

    def build_url(path)
      endpoint + path
    end

    def endpoint
      "https://www.tunefind.com/api/v1/"
    end
  end
end
