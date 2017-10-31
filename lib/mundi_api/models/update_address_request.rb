# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for updating an address
  class UpdateAddressRequest < BaseModel
    # Number
    # @return [String]
    attr_accessor :number

    # Complement
    # @return [String]
    attr_accessor :complement

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['number'] = 'number'
        @_hash['complement'] = 'complement'
        @_hash['metadata'] = 'metadata'
      end
      @_hash
    end

    def initialize(number = nil,
                   complement = nil,
                   metadata = nil)
      @number = number
      @complement = complement
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash['number']
      complement = hash['complement']
      metadata = hash['metadata']

      # Create object from extracted values.
      UpdateAddressRequest.new(number,
                               complement,
                               metadata)
    end
  end
end