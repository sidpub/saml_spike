SamlIdp.configure do |config|
  base = Figaro.env.saml_base_url
  config.x509_certificate = Figaro.env.saml_secret_cert
  config.secret_key = Figaro.env.saml_secret_key
  config.organization_name = "GO-JEK"
  config.organization_url = "http://www.go-jek.com"
  config.base_saml_location = "#{base}/saml"
  #config.reference_id_generator
  config.attribute_service_location = "#{base}/saml/attributes"
  config.single_service_post_location = "#{base}/saml/auth"
  config.single_logout_service_post_location = "#{base}/saml/logout"
  config.single_logout_service_redirect_location = "#{base}/saml/logout"
  config.session_expiry = 86400
  config.name_id.formats = {
    email_address: -> (principal) { principal.email_address },
    transient: -> (principal) {principal.user_login_id},
    persistent: -> (principal) {principal.user_login_id},
    name: -> (principal) {principal.name},
  }
  config.attributes = {
    'eduPersonPrincipalName' => {
      'name' => 'urn:oid:1.3.6.1.4.1.5923.1.1.1.6',
      'name_format' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
      'getter' => ->(principal) { "#{principal.email}" }
    },
  }
  service_providers = {
    "app.datadoghq.com/saml" => {
      fingerprint: Figaro.env.saml_fingerprint,
      metadata_url: "https://app.datadoghq.com/account/saml/metadata.xml"
    },
  }
  config.service_provider.metadata_persister = ->(identifier, settings) {
    fname = identifier.to_s.gsub(/\/|:/,"_")
    FileUtils.mkdir_p(Rails.root.join('cache', 'saml', 'metadata').to_s)
    File.open Rails.root.join("cache/saml/metadata/#{fname}"), "r+b" do |f|
      Marshal.dump settings.to_h, f
    end
  }
  config.service_provider.persisted_metadata_getter = ->(identifier, service_provider){
    fname = identifier.to_s.gsub(/\/|:/,"_")
    FileUtils.mkdir_p(Rails.root.join('cache', 'saml', 'metadata').to_s)
    full_filename = Rails.root.join("cache/saml/metadata/#{fname}")
    if File.file?(full_filename)
      File.open full_filename, "rb" do |f|
        Marshal.load f
      end
    end
  }
  config.service_provider.finder = ->(issuer_or_entity_id) do
    service_providers[issuer_or_entity_id]
  end
end
