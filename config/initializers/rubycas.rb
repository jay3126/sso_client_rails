require 'casclient'
require 'casclient/frameworks/rails/filter'


# Where is the SSO server
CASClient::Frameworks::Rails::Filter.configure(
  :cas_base_url => "http://127.0.0.1:8888"
)
