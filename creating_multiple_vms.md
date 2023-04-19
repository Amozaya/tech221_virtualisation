# Creating multiple VMs in Vagrant

To have multiple VM created you need to make some changes to your `Vagrantfile`:

1. Open your `Vagrantfile`
2. At the top of your configuration code write a line of code to define your VM: `config.vm.define "app" do |app|`, where:
    * `config.vm.define "app"` - giving a name "app" to our VM
    * `do |app|` - telling to configurate this VM
3. If you have any code written already that you want to use to configure "app" VM, you have to make sure:
    * You indent all of the written code to be inside  the `define`
    * change all of the `config.vm.` lines to `app.vm.` to ensure it applies changes only to "app" VM
4. If you want to write some new commands use `app.vm.` to configure your VM
5. At the end of your config you need to add `end` on the same line as `config.vm.define "app" do |app|`
6. Your code should look something like:

```
config.vm.define "app" do |app|

    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"

    app.vm.provision "shell", path: "provisioning.sh"

    # syncing the app folder
    app.vm.synced_folder "app", "/home/vagrant/app"
end
```


To add additional VM:
1. Underneath the created VM machine define a new VM by writing `config.vm.define "<name>" do |<name>|`
2. Write configuration code by using `<name>.vm.`
3. Close your congiguration with `end` on the same line as `define`
4. Example:
```
config.vm.define "db" do |db|

    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip:"192.168.10.150"
    
end
``` 