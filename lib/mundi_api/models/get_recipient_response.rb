# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Recipient response
  class GetRecipientResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Name
    # @return [String]
    attr_accessor :name

    # Email
    # @return [String]
    attr_accessor :email

    # Document
    # @return [String]
    attr_accessor :document

    # Description
    # @return [String]
    attr_accessor :description

    # Type
    # @return [String]
    attr_accessor :type

    # Status
    # @return [String]
    attr_accessor :status

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Deletion date
    # @return [DateTime]
    attr_accessor :deleted_at

    # Default bank account
    # @return [GetBankAccountResponse]
    attr_accessor :default_bank_account

    # Info about the recipient on the gateway
    # @return [List of GetGatewayRecipientResponse]
    attr_accessor :gateway_recipients

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['id'] = 'id'
        @_hash['name'] = 'name'
        @_hash['email'] = 'email'
        @_hash['document'] = 'document'
        @_hash['description'] = 'description'
        @_hash['type'] = 'type'
        @_hash['status'] = 'status'
        @_hash['created_at'] = 'created_at'
        @_hash['updated_at'] = 'updated_at'
        @_hash['deleted_at'] = 'deleted_at'
        @_hash['default_bank_account'] = 'default_bank_account'
        @_hash['gateway_recipients'] = 'gateway_recipients'
        @_hash['metadata'] = 'metadata'
      end
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   email = nil,
                   document = nil,
                   description = nil,
                   type = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   deleted_at = nil,
                   default_bank_account = nil,
                   gateway_recipients = nil,
                   metadata = nil)
      @id = id
      @name = name
      @email = email
      @document = document
      @description = description
      @type = type
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @deleted_at = deleted_at
      @default_bank_account = default_bank_account
      @gateway_recipients = gateway_recipients
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      name = hash['name']
      email = hash['email']
      document = hash['document']
      description = hash['description']
      type = hash['type']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      deleted_at = DateTime.rfc3339(hash['deleted_at']) if hash['deleted_at']
      default_bank_account = GetBankAccountResponse.from_hash(hash['default_bank_account']) if
        hash['default_bank_account']
      # Parameter is an array, so we need to iterate through it
      gateway_recipients = nil
      unless hash['gateway_recipients'].nil?
        gateway_recipients = []
        hash['gateway_recipients'].each do |structure|
          gateway_recipients << (GetGatewayRecipientResponse.from_hash(structure) if structure)
        end
      end
      metadata = hash['metadata']

      # Create object from extracted values.
      GetRecipientResponse.new(id,
                               name,
                               email,
                               document,
                               description,
                               type,
                               status,
                               created_at,
                               updated_at,
                               deleted_at,
                               default_bank_account,
                               gateway_recipients,
                               metadata)
    end
  end
end
