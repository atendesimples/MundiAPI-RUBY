# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # GetTransactionReportFileResponse Model.
  class GetTransactionReportFileResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['date'] = 'date'
      @_hash
    end

    def initialize(name = nil,
                   date = nil)
      @name = name
      @date = date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      date = APIHelper.rfc3339(hash['date']) if hash['date']

      # Create object from extracted values.
      GetTransactionReportFileResponse.new(name,
                                           date)
    end
  end
end