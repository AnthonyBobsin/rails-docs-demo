class Pet < ApplicationRecord
  extend Apipie::DSL::Concern

  def_param_group :pet_creation do
    # TODO: add a param option to differentiate param vs ref name
    param :pet_creation_request, Hash do
      param :name, String
    end
  end

  class << self
    def describe_own_properties
      [
        Apipie::prop(:name, 'string', description: 'Name of pet'),
        Apipie::prop(:photo_url, 'string', description: 'Photo of pet', required: false),
        Apipie::prop(:status, 'string', description: 'Status of pet'),
        Apipie::prop(:owner, 'object', { description: 'Owner of pet' }, Owner.describe_own_properties)
      ]
    end
  end
end
