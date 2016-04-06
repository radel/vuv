Vagrant.configure("2") do |config|

	# Specify the base box
	config.vm.box = "ubuntu/trusty64"

	# Setup port forwarding
	config.vm.network :forwarded_port, guest: 80, host: 8931, auto_correct: true

    # Setup synced folder
    config.vm.synced_folder "./code", "/home/vagrant/code", create: true, group: "vagrant", owner: "vagrant"

    # VM specific configs
    config.vm.provider "virtualbox" do |v|
    	v.name = "VUV test vagrant"
    	v.customize ["modifyvm", :id, "--memory", "1024"]
    end

    # Shell provisioning
    config.vm.provision "shell" do |s|
    	s.path = "provision/setup.sh"
    end
end
