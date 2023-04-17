Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"

  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt update -y
  #   sude apt upgrade -y
  #   sudo apt install nginx -y
  # SHELL

  config.vm.provision "shell", path: "provisioning.sh"

end
