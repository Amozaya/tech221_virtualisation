# Virtualisation

## What is a Virtual Machine?


Virtual Machine is a virual environment that functions as a virtual computer system with it's own own CPU, RAM and storage created on the physical hardware system.
It uses `Hypervisor`, which installed on top of the local OS, in order to allocate the resources to the virtual machines.
Virtual machines are completely isolated, meaning VM is not aware it is build on top of the local OS or there are any other VM created. This way if anything goes wrong with the VM it wont affect local OS or any other VM.

You can create multiple VMs on the same computer and you can share resources between them, but you can only share whatever resources are available for you. If you have only 8Gb or RAM available, it means you can only share up to 8Gb of memory with VMs.

_There are 2 types of `Hypervisors`:_

* Type 1 - also knows as `Bare Metal`, is a hypervisor installed directly on the hardware, meaning there is no OS between hypervisor and hardware

* Type 2 - hypervisor installed on the machine with it's own OS and it uses this OS in order to communicate with hardware and allocate the resources

## What is Development Environment?

Development Environment is a workspace for developers to make changes without breaking anything in a live environment.

![Development Diagram](resources/deployment_left_to_right.png)

Development Environment should be used when you want to make any changes to your software without affecting your users. To create a development environment developers usually make a copy of the application on their local machine where they can do any extrame changes and test them before releasing them to the live environment. 
Depending on the size of the project there might be multiple environments. In some cases you might also have a "Staging" environment, it is done in the critical project to ensure that new code goes through an extra layer of testing before going into the live environment.


## Using Vagrant and VirtualBox

![Virtualisation Diagram](resources/VirtualisationDiagram.JPG)