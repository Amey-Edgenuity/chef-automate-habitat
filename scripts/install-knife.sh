// Configure Knife
mkdir ~/learn-chef/.chef

//Edit the following file
vim ~/learn-chef/.chef/knife.rb

current_dir = File.dirname(__FILE__)
log_level                 :info
log_location              STDOUT
node_name                 "delivery"
client_key                "#{current_dir}/delivery.pem"
chef_server_url           "https://$CHEF_AUTOMATE_FQDN/organizations/chefautomate"
cookbook_path             ["#{current_dir}/../cookbooks"]

// Copy PEM file
cp /tmp/delivery.pem ~/learn-chef/.chef

cd ~/learn-chef

knife ssl fetch
knife ssl check
