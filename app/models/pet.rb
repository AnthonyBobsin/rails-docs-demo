class Pet < ApplicationRecord
  class << self
    def describe_own_properties
      [
        Apipie::prop(:name, 'string', description: 'Name of pet'),
        Apipie::prop(:photo_url, 'string', description: 'Photo of pet', required: false),
        Apipie::prop(:status, 'string', description: 'Status of pet'),
        Apipie::prop(:owner, 'Owner', description: 'Owner of pet')
      ]
    end
  end
end
