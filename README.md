# MariaDB on Ubuntu 14.04 using Vagrant

This project enables you to install [MariaDB 5.5] in a virtual machine running Ubuntu 14.04, using
[Vagrant] and shell provisioning.

## Requirements

* You need to have [Vagrant] installed.
* The host machine needs [Virtual Box] version 4.3.12 installed.

## Installation

* Check out this project:

        git clone https://github.com/dmi3zkm/vagrant-ubuntu-mariadb

* Install [vbguest]:

        vagrant plugin install vagrant-vbguest

* Run `vagrant up` from the base directory of this project. Please,
  note that building the VM involves downloading an Ubuntu 14.04
  [base box](https://s3.amazonaws.com/joshfng_vagrant_boxes/v3/joshfng_virtualbox_ubuntu-14.04.box)
  
## Connecting

You should now be able to connect to MariaDB at `localhost:3306/` as `root` with password `P@ssw0rd`.

[Vagrant]: http://www.vagrantup.com/
[MariaDB 5.5]: https://mariadb.org/ 
[Virtual Box]: https://www.virtualbox.org/
[vbguest]: https://github.com/dotless-de/vagrant-vbguest