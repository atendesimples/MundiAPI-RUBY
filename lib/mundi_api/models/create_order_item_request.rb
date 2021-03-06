# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Request for creating an order item
  class CreateOrderItemRequest < BaseModel
    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Description
    # @return [String]
    attr_accessor :description

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Item seller
    # @return [CreateSellerRequest]
    attr_accessor :seller

    # seller identificator
    # @return [String]
    attr_accessor :seller_id

    # Category
    # @return [String]
    attr_accessor :category

    # The item code passed by the client
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['seller'] = 'seller'
      @_hash['seller_id'] = 'seller_id'
      @_hash['category'] = 'category'
      @_hash['code'] = 'code'
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   quantity = nil,
                   category = nil,
                   seller = nil,
                   seller_id = nil,
                   code = nil)
      @amount = amount
      @description = description
      @quantity = quantity
      @seller = seller
      @seller_id = seller_id
      @category = category
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      quantity = hash['quantity']
      category = hash['category']
      seller = CreateSellerRequest.from_hash(hash['seller']) if hash['seller']
      seller_id = hash['seller_id']
      code = hash['code']

      # Create object from extracted values.
      CreateOrderItemRequest.new(amount,
                                 description,
                                 quantity,
                                 category,
                                 seller,
                                 seller_id,
                                 code)
    end
  end
end
