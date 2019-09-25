module Apipie
  class SwaggerGenerator
    def json_schema_param_defs_from_params_array(params_array, allow_nulls = false)
      param_defs = {}
      required_params = []

      params_array ||= []


      for param_desc in params_array
        if !param_desc.respond_to?(:required)
          # pp param_desc
          raise ("unexpected param_desc format")
        end

        required_params.push(param_desc.name.to_sym) if param_desc.required

        param_type = swagger_param_type(param_desc)

        ##### START OF MONKEYPATCH #####
        if param_type == "object" && true # change this to some config?
          schema = {"$ref" => gen_referenced_block_from_params_array(param_desc.name.to_s.titleize.to_sym, param_desc.validator.params_ordered, allow_nulls) }
          param_defs[param_desc.name.to_sym] = schema unless schema.nil?
        ##### END OF MONKEYPATCH   #####
        elsif param_type == "object" && param_desc.validator.params_ordered
          schema = json_schema_obj_from_params_array(param_desc.validator.params_ordered, allow_nulls)

          if param_desc.additional_properties
            schema[:additionalProperties] = true
          end

          if param_desc.is_array?
            new_schema = {
              type: 'array',
              items: schema
            }
            schema = new_schema
          end

          if allow_nulls
            # ideally we would write schema[:type] = ["object", "null"]
            # but due to a bug in the json-schema gem, we need to use anyOf
            # see https://github.com/ruby-json-schema/json-schema/issues/404
            new_schema = {
              anyOf: [schema, {type: "null"}]
            }
            schema = new_schema
          end
          param_defs[param_desc.name.to_sym] = schema if !schema.nil?
        else
          param_defs[param_desc.name.to_sym] = swagger_atomic_param(param_desc, true, nil, allow_nulls)
        end
      end

      [param_defs, required_params]
    end
  end
end
