# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # The settings for creating a credit card payment
  class CreateCreditCardPaymentRequest < BaseModel
    # Number of installments
    # @return [Integer]
    attr_accessor :installments

    # The text that will be shown on the credit card's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Credit card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # Number of retries
    # @return [Integer]
    attr_accessor :retries

    # Indicates if the card from the subscription must be updated
    # @return [Boolean]
    attr_accessor :update_subscription_card

    # The credit card id
    # @return [String]
    attr_accessor :card_id

    # The credit card id
    # @return [String]
    attr_accessor :card_token

    # Indicates a recurrence
    # @return [Boolean]
    attr_accessor :recurrence

    # Indicates if the operation should be only authorization or auth and
    # capture.
    # @return [Boolean]
    attr_accessor :capture

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['installments'] = 'installments'
        @_hash['statement_descriptor'] = 'statement_descriptor'
        @_hash['card'] = 'card'
        @_hash['retries'] = 'retries'
        @_hash['update_subscription_card'] = 'update_subscription_card'
        @_hash['card_id'] = 'card_id'
        @_hash['card_token'] = 'card_token'
        @_hash['recurrence'] = 'recurrence'
        @_hash['capture'] = 'capture'
      end
      @_hash
    end

    def initialize(installments = 1,
                   statement_descriptor = nil,
                   card = nil,
                   retries = nil,
                   update_subscription_card = nil,
                   card_id = nil,
                   card_token = nil,
                   recurrence = nil,
                   capture = true)
      @installments = installments
      @statement_descriptor = statement_descriptor
      @card = card
      @retries = retries
      @update_subscription_card = update_subscription_card
      @card_id = card_id
      @card_token = card_token
      @recurrence = recurrence
      @capture = capture
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      installments = hash['installments'] ||= 1
      statement_descriptor = hash['statement_descriptor']
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      retries = hash['retries']
      update_subscription_card = hash['update_subscription_card']
      card_id = hash['card_id']
      card_token = hash['card_token']
      recurrence = hash['recurrence']
      capture = hash['capture'] ||= true

      # Create object from extracted values.
      CreateCreditCardPaymentRequest.new(installments,
                                         statement_descriptor,
                                         card,
                                         retries,
                                         update_subscription_card,
                                         card_id,
                                         card_token,
                                         recurrence,
                                         capture)
    end
  end
end