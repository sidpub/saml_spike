SamlIdp.configure do |config|
  base = Figaro.env.saml_base_url
  config.x509_certificate = <<EOS.strip
MIIDQjCCAioCCQCysQBe6h5fODANBgkqhkiG9w0BAQUFADBjMQswCQYDVQQGEwJJ
RDEQMA4GA1UECAwHSmFrYXJ0YTEPMA0GA1UEBwwGQmxvayBNMQ8wDQYDVQQKDAZH
Ty1KRUsxCzAJBgNVBAsMAklUMRMwEQYDVQQDDApnby1qZWsuY29tMB4XDTE4MDQy
NjEwMzQ0OVoXDTE5MDQyNjEwMzQ0OVowYzELMAkGA1UEBhMCSUQxEDAOBgNVBAgM
B0pha2FydGExDzANBgNVBAcMBkJsb2sgTTEPMA0GA1UECgwGR08tSkVLMQswCQYD
VQQLDAJJVDETMBEGA1UEAwwKZ28tamVrLmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAKJzUlXaifz2NYjK9kXa75gyvLmuVErPtZfDz+QNSmEBtUP5
mZCqncs8ChfIvGRvnDemcyRcqIq6/RF/jEMHBc8nfV+H04rLq9OvlJJ6s/BEYoF5
NTonxZzdHB5xpkMy9PlVsWjc12yIglE4bk/VpK/2/UEZJCbzQQMm7s8/ieMKc/3C
tGMgPF+BLbm9uvgWnBGJBgXzwCUSeZZjh5DMNV5UX8qGr3oKD9idAA5/CXNDycF8
juPmHl1lhAsbtWovHct3JZzghN6uN9KLfhlt5ZbcSkLDfszRqgpOyaTxYyXAhQ0U
85Q/jg945/M6ZzqkPUzC1BUNLVNcGdAMA1O7AqECAwEAATANBgkqhkiG9w0BAQUF
AAOCAQEAgVwZRO4rjRLpYo04KZc2Dnd8XtRekPJJpQVtscn1qsjXxgM8DOVCTFta
eSwBtzDLDJuLvV3+yqjtl5FO4DY8UWvrlYuZafnaAcGvl1Sn6G9XuJkYaMmxOD/J
5iY/yoiPEkez9TdDDK6K5we73qMqMFYgmbWF16gY+yqmeThe5z0ZWme5gUvBIgNO
jOXVS7rUN+bjPJ3NA9GCiCdJD2POwQrZHAYa9TcREIWejIS1mEczsCwLG1q2jMaY
iKuHXdtg6MmZ2el+f8OLXQX6nD4PQCBuQCWNf1EpOBn7pWMCK5kCqRQOFce3+5vi
JLq6NOijfch79LE82/8HnzN044wjEA==
EOS
  config.secret_key = <<EOS
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAonNSVdqJ/PY1iMr2RdrvmDK8ua5USs+1l8PP5A1KYQG1Q/mZ
kKqdyzwKF8i8ZG+cN6ZzJFyoirr9EX+MQwcFzyd9X4fTisur06+Uknqz8ERigXk1
OifFnN0cHnGmQzL0+VWxaNzXbIiCUThuT9Wkr/b9QRkkJvNBAybuzz+J4wpz/cK0
YyA8X4Etub26+BacEYkGBfPAJRJ5lmOHkMw1XlRfyoavegoP2J0ADn8Jc0PJwXyO
4+YeXWWECxu1ai8dy3clnOCE3q430ot+GW3lltxKQsN+zNGqCk7JpPFjJcCFDRTz
lD+OD3jn8zpnOqQ9TMLUFQ0tU1wZ0AwDU7sCoQIDAQABAoIBAFSv08tn+ymBXNUs
IYi3ItJwGMyfodfCQoOUk+rqNs0ta8a89x5go5QQf554iiW9vW2Re1MIbuCrrEQT
/xXuMkwU5RoJH/GqTbA0Rzq5dtaZf9TJUEM5+p3U8tS4IJnFlcnpr2vgPPmajH00
8uTxlkIZe1sVdTBM/aZcBIDMOeC+fH5zSuNtbq1ZQEIgwatc954ZgNXaxcIfYF9I
C6EdLv90Z0yKES9KQPsu6jQ8XRNEv8JAL6geg6eiLVvM2nRHHSZfabLxJF9zK5pZ
CVC/XMmwhpEmnM22oezWhftG77R0K6BM1lr9JcSDAAzAlnCN2+KTCOe520h5lxFD
BoBbkvECgYEA1GmFvuwuj5KYJyt6PNZZQi2wyepAvaUzCE9pM4U7duKGaDa20c4o
1OTUfsBtXaCyxBIKHeNdNvcw0aCoMhawyzoclEIOAbHSbRAPbMfoA1Ngs2ZODcHa
+yImIt9IszjEZ5/nswIfFpNaobmf2V1196x3Mzvs5Ar6nkvi68JWS9UCgYEAw8kz
WagBkSUtzLyMT8lRIRHZ4FK7LC8iW/Rg+9X4EodCJ/m1CvjBVJFXH/gY1vZ3jZoM
HAsqh9jGm+/VWQq5ZP8+G9DvubZzCATcWxi8TzCNkC4G2DJ6ioZL1Sm+g7x9obZ0
jwRPQz0FYrzoOcS4oLkwHDkVeUXyTdb5Ffvp/Z0CgYB7jDD93tQqMCMNzW0ZC7f5
FShaGUW0yOzI7Z+MFveCa7mvzftCRz5argqm+vfh2IGCJ9f4kHF8cgTUOTT7hVUp
r9BFr7ID7FEvnILMS+44WPvK/TtzJwlevvsdl2/qxp7+gvS6mwZIFEdH//bo8EKY
X5kplLZx4azp+8uuQ2f8TQKBgC+ybp4i/e68XgII1S4C347s6GVsAklrWjWIva/c
msj4xrcycFax73eIyO7y5CpKdSm8I8MZPU1HFGuc7B77K9tdC2Z/akeWGUQU2xIe
XpH0RCih7ezxr0TcHtFZkB5L51dkOdU1uZGp5gv99Z1NPaV6OCxIA+E9lyA7hQdE
DedJAoGAXO/bPbU/i2SoP+sJQ2/qMnT35ceaN0Q4QXpRbQibU2Xe10aq4OR+yLmx
Ce8SZ1KmgB+vKy6SXDKMRI8ZoQwawbBpOCgAUZLcoCAQufpp4jrGF9gQSPqMVmPB
7CXTOUrbjw/C3cEPJAZGt8pH0J2UMS4V42xgZuYjLDNzRPwPNi8=
-----END RSA PRIVATE KEY-----
EOS
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
