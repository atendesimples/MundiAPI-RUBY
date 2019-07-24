# mundi_api
#
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

    # Indicates whether the extended label (private label) is enabled
    # @return [Boolean]
    attr_accessor :extended_limit_enabled

    # Extended Limit Code
    # @return [String]
    attr_accessor :extended_limit_code

    # Customer business segment code
    # @return [Long]
    attr_accessor :merchant_category_code

    # The payment authentication request
    # @return [CreatePaymentAuthenticationRequest]
    attr_accessor :authentication

    # The Credit card payment contactless request
    # @return [CreateCardPaymentTokenRequest]
    attr_accessor :contactless

    # Indicates whether a particular payment will enter the offline retry flow
    # @return [Boolean]
    attr_accessor :auto_recovery

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['installments'] = 'installments'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['card'] = 'card'
      @_hash['card_id'] = 'card_id'
      @_hash['card_token'] = 'card_token'
      @_hash['recurrence'] = 'recurrence'
      @_hash['capture'] = 'capture'
      @_hash['extended_limit_enabled'] = 'extended_limit_enabled'
      @_hash['extended_limit_code'] = 'extended_limit_code'
      @_hash['merchant_category_code'] = 'merchant_category_code'
      @_hash['authentication'] = 'authentication'
      @_hash['contactless'] = 'contactless'
      @_hash['auto_recovery'] = 'auto_recovery'
      @_hash
    end

    def initialize(installments = 1,
                   statement_descriptor = nil,
                   card = nil,
                   card_id = nil,
                   card_token = nil,
                   recurrence = nil,
                   capture = true,
                   extended_limit_enabled = nil,
                   extended_limit_code = nil,
                   merchant_category_code = nil,
                   authentication = nil,
                   contactless = nil,
                   auto_recovery = nil)
      @installments = installments
      @statement_descriptor = statement_descriptor
      @card = card
      @card_id = card_id
      @card_token = card_token
      @recurrence = recurrence
      @capture = capture
      @extended_limit_enabled = extended_limit_enabled
      @extended_limit_code = extended_limit_code
      @merchant_category_code = merchant_category_code
      @authentication = authentication
      @contactless = contactless
      @auto_recovery = auto_recovery
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      installments = hash['installments'] ||= 1
      statement_descriptor = hash['statement_descriptor']
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      card_id = hash['card_id']
      card_token = hash['card_token']
      recurrence = hash['recurrence']
      capture = hash['capture'] ||= true
      extended_limit_enabled = hash['extended_limit_enabled']
      extended_limit_code = hash['extended_limit_code']
      merchant_category_code = hash['merchant_category_code']
      if hash['authentication']
        authentication = CreatePaymentAuthenticationRequest.from_hash(hash['authentication'])
      end
      if hash['contactless']
        contactless = CreateCardPaymentTokenRequest.from_hash(hash['contactless'])
      end
      auto_recovery = hash['auto_recovery']

      # Create object from extracted values.
      CreateCreditCardPaymentRequest.new(installments,
                                         statement_descriptor,
                                         card,
                                         card_id,
                                         card_token,
                                         recurrence,
                                         capture,
                                         extended_limit_enabled,
                                         extended_limit_code,
                                         merchant_category_code,
                                         authentication,
                                         contactless,
                                         auto_recovery)
    end
  end
end
