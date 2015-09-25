module MovieDb

  class Movie < Hash

    require 'httparty'
    require 'hashie'
    include Hashie::Extensions::Coercion
    include HTTParty

    @@api_key = "?api_key=0e69e03e8a23c5237e072ba9f699081c"
    @@base_url = "https://api.themoviedb.org/3/"

    def self.result(url)
      movie_result =  get(url)
      movie_results = Hashie::Mash.new(movie_result)
      return movie_results
    end

    def self.search(query)
      url = @@base_url + "search/movie" + @@api_key
      query.each { |key, value| url = url + "&#{key}=#{value}" }
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.upcoming
      url = @@base_url + "movie/upcoming" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.top_rated
      url = @@base_url + "movie/top_rated" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.popular
      url = @@base_url + "movie/popular" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.latest
      url = @@base_url + "movie/latest" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.now_playing
      url = @@base_url + "movie/now_playing" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.account_states(id)
      url = @@base_url + "movie/" + id.to_s + "/account_states" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.alternative_titles(id)
      url = @@base_url + "movie/" + id.to_s + "/alternative_titles" + @@api_key
      return result(url)
    end

    def self.credits(id)
      url = @@base_url + "movie/" + id.to_s + "/credits" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.images(id)
      url = @@base_url + "movie/" + id.to_s + "/images" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.keywords(id)
      url = @@base_url + "movie/" + id.to_s + "/keywords" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.releases(id)
      url = @@base_url + "movie/" + id.to_s + "/releases" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.videos(id)
      url = @@base_url + "movie/" + id.to_s + "/videos" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.translations(id)
      url = @@base_url + "movie/" + id.to_s + "/translations" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.similar(id)
      url = @@base_url + "movie/" + id.to_s + "/similar" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.reviews(id)
      url = @@base_url + "movie/" + id.to_s + "/reviews" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.lists(id)
      url = @@base_url + "movie/" + id.to_s + "/lists" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.changes(id)
      url = @@base_url + "movie/" + id.to_s + "/changes" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.trailers(id)
      url = @@base_url + "movie/" + id.to_s + "/trailers" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

    def self.similar_movies(id)
      url = @@base_url + "movie/" + id.to_s + "/similar_movies" + @@api_key
      if result(url).status_code
        return "Request not valid"
      else
        return result(url)
      end
    end

  end

  class Tv < Hash

    require 'httparty'
    require 'hashie'
    include Hashie::Extensions::Coercion
    include HTTParty

    def self.search(query)
      @api_key = "?api_key=0e69e03e8a23c5237e072ba9f699081c"
      @base_url = "https://api.themoviedb.org/3/"
      url = @base_url + "search/tv" + @api_key + "&query=" + query
      tv_result =  get(url)
      tv_results = Hashie::Mash.new(tv_result)
      return tv_results
    end

  end

  class Collection < Hash

    require 'httparty'
    require 'hashie'
    include Hashie::Extensions::Coercion
    include HTTParty

    def self.search(query)
      @api_key = "?api_key=0e69e03e8a23c5237e072ba9f699081c"
      @base_url = "https://api.themoviedb.org/3/"
      url = @base_url + "search/collection" + @api_key + "&query=" + query
      return  get(url)
    end

  end

  class Person < Hash

    require 'httparty'
    require 'hashie'
    include Hashie::Extensions::Coercion
    include HTTParty

    def self.search(query)
      @api_key = "?api_key=0e69e03e8a23c5237e072ba9f699081c"
      @base_url = "https://api.themoviedb.org/3/"
      url = @base_url + "search/person" + @api_key + "&query=" + query
      person_result =  get(url)
      person_results = Hashie::Mash.new(person_result)
      return person_results
    end

  end

  class Company < Hash

    require 'httparty'
    require 'hashie'
    include Hashie::Extensions::Coercion
    include HTTParty

    def self.search(query)
      @api_key = "?api_key=0e69e03e8a23c5237e072ba9f699081c"
      @base_url = "https://api.themoviedb.org/3/"
      url = @base_url + "search/company" + @api_key + "&query=" + query
      return  get(url)
    end

  end

end
