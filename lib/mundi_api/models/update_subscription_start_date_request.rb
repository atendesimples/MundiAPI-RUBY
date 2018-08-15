# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Request for updating the start date from a subscription
  class UpdateSubscriptionStartDateRequest < BaseModel
    # The date when the subscription periods will start
    # @return [DateTime]
    attr_accessor :start_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_at'] = 'start_at'
      @_hash
    end

    def initialize(start_at = nil)
      @start_at = start_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_at = APIHelper.rfc3339(hash['start_at']) if hash['start_at']

      # Create object from extracted values.
      UpdateSubscriptionStartDateRequest.new(start_at)
    end
  end
end
