require "net/http"
require "reclame_aqui/version"
require "reclame_aqui/reputation_by_website"

module ReclameAqui
  def self.reputation(term)
    ReputationByWebsite.new(term).get_reputation
  end
end
