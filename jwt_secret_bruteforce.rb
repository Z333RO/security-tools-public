require 'base64'
require 'openssl'

jwt = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c" #enter your JWT here

header, data, signature = jwt.split(".")

def sign(data, secret)
    Base64.urlsafe_encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), secret, data)).gsub("=","")
end 
File.readlines("list.txt").each do |line| #enter your wordlist here
    line.chomp!
    if sign(header+"."+data, line) == signature
        puts line 
        exit 
    end 
end
