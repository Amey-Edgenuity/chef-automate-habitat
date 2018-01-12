Vagrant.configure("2") do |config|
  config.vm.define "chefserver" do |chefserver|
    chefserver.vm.box = "precise64"
    chefserver.vm.hostname = 'chefserver'
    chefserver.vm.box_url = "ubuntu/precise64"
    
    chefserver.vm.network :private_network, ip: "192.168.56.101"
 
    # Install Chef Server
    config.vm.provision "shell", path: "scripts/install-chef-server.sh"    

   end

   config.vm.define "automate" do |automate|
    automate.vm.box = "precise64"
    automate.vm.hostname = 'automate'
    automate.vm.box_url = "ubuntu/precise64"

    automate.vm.network :private_network, ip: "192.168.56.102"

    # automate.vm.provider :virtualbox do |automate|
    #  automate.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    #  automate.customize ["modifyvm", :id, "--memory", 512]
    #  automate.customize ["modifyvm", :id, "--name", "automate"]
end
end
