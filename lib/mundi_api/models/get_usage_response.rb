# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module MundiApi
  class GetUsageResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Description
    # @return [String]
    attr_accessor :description

    # Used at
    # @return [DateTime]
    attr_accessor :used_at

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Subscription item
    # @return [GetSubscriptionItemResponse]
    attr_accessor :subscription_item

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["quantity"] = "quantity"
        @_hash["description"] = "description"
        @_hash["used_at"] = "used_at"
        @_hash["created_at"] = "created_at"
        @_hash["subscription_item"] = "subscription_item"
      end
      @_hash
    end

    def initialize(id = nil,
                   quantity = nil,
                   description = nil,
                   used_at = nil,
                   created_at = nil,
                   subscription_item = nil)
      @id = id
      @quantity = quantity
      @description = description
      @used_at = used_at
      @created_at = created_at
      @subscription_item = subscription_item
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      quantity = hash['quantity']
      description = hash['description']
      used_at = DateTime.rfc3339(hash['used_at']) if hash['used_at']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      subscription_item = GetSubscriptionItemResponse.from_hash(hash['subscription_item']) if hash['subscription_item']

      # Create object from extracted values
      GetUsageResponse.new(id,
                           quantity,
                           description,
                           used_at,
                           created_at,
                           subscription_item)
    end
  end
end
