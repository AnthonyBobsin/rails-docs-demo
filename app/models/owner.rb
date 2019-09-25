class Owner < ApplicationRecord
  class << self
    # def inject_param_group(kls)
    #   kls.instance_eval do
    #     def_param_group :owner do
    #       param :name, String
    #       param :age, String
    #       param :status, String
    #     end
    #   end
    # end

    def describe_own_properties
      [
        Apipie::prop(:name, 'string', description: 'Name of owner'),
        Apipie::prop(:age, 'string', description: 'Age of owner', required: false),
        Apipie::prop(:gender, 'string', description: 'Gender of owner', required: false),
      ]
    end
  end
end
