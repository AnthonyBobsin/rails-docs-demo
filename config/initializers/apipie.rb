Apipie.configure do |config|
  config.app_name                = "RailsDocsDemo"
  config.api_base_url            = ""
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
  config.translate = false

  # config.swagger_json_input_uses_refs = true
  config.swagger_content_type_input = :json
end
