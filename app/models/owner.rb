class Owner < ApplicationRecord
  class << self
    def describe_own_properties
      [
        Apipie::prop(:name, 'string', description: 'Name of owner'),
        Apipie::prop(:age, 'string', description: 'Age of owner', required: false),
        Apipie::prop(:gender, 'string', description: 'Gender of owner', required: false),
      ]
    end
  end
end
