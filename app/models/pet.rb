class Pet < ApplicationRecord
  class << self
  #   def inject_param_group(kls)
  #     kls.instance_eval do
  #       Owner.inject_param_group(kls)
  #
  #       def_param_group :pet do
  #         param :name, String, "Pet Name"
  #         param :photo_url, String
  #         param :status, String
  #         param :owner, Hash do
  #           param_group :owner
  #         end
  #       end
  #     end
  #   end

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
