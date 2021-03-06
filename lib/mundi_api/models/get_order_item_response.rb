# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Response object for getting an order item
  class GetOrderItemResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Id
    # @return [Integer]
    attr_accessor :amount

    # Id
    # @return [String]
    attr_accessor :description

    # Id
    # @return [Integer]
    attr_accessor :quantity

    # Seller data
    # @return [GetSellerResponse]
    attr_accessor :get_seller_response

    # Category
    # @return [String]
    attr_accessor :category

    # Code
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['get_seller_response'] = 'GetSellerResponse'
      @_hash['category'] = 'category'
      @_hash['code'] = 'code'
      @_hash
    end

    def initialize(id = nil,
                   amount = nil,
                   description = nil,
                   quantity = nil,
                   category = nil,
                   code = nil,
                   get_seller_response = nil)
      @id = id
      @amount = amount
      @description = description
      @quantity = quantity
      @get_seller_response = get_seller_response
      @category = category
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      amount = hash['amount']
      description = hash['description']
      quantity = hash['quantity']
      category = hash['category']
      code = hash['code']
      if hash['GetSellerResponse']
        get_seller_response = GetSellerResponse.from_hash(hash['GetSellerResponse'])
      end

      # Create object from extracted values.
      GetOrderItemResponse.new(id,
                               amount,
                               description,
                               quantity,
                               category,
                               code,
                               get_seller_response)
    end
  end
end
