class Joke < ActiveResource::Base
  self.site = "http://csci446joker.herokuapp.com/jokes/random:3000"
end
