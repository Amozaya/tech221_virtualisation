Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|

    db.vm.box = "ubuntu/bionic64"
    db.vm.network "private_network", ip:"192.168.10.150"
    db.vm.provision "shell", path: "db_provisioning/provisioning.sh"
  end 
  
  config.vm.define "app" do |app|

    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"

    app.vm.provision "shell", path: "provisioning.sh"

    # syncing the app folder
    app.vm.synced_folder "app", "/home/vagrant/app"
  end

  
end
