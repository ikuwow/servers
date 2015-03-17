# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ikuwow"
client_key               "#{current_dir}/ikuwow.pem"
validation_client_name   "ikuwow-validator"
validation_key           "#{current_dir}/ikuwow-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ikuwow"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
encrypted_data_bag_secret "data_bag_key"
