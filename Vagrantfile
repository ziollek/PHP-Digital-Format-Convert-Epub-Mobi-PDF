# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.host_name = "publicator.dev"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.network :hostonly, "192.168.33.222"

  config.vm.share_folder "publicator", "/home/vagrant/publicator", "."
  config.vm.provision :shell, :path => "vagrant_config.sh"

  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/SHARE_NAME", "1"]
end
