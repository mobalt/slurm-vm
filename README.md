# XNAT Development Virtual Machines
Only vagrant is required.

## Usage
| command           | description        |
| :------------     | :----------------- |
| `vagrant up`      | Deploy/Start       |
| `vagrant ssh`     | Connect to your VM |
| `vagrant halt`    | Gracefully Stop VM |
| `vagrant destroy` | Delete VM          |

Inside the machine (`vagrant ssh`) you can test slurm by running the [sleeper.sh](./sleeper.sh)
script and tailing the resulting file, ie:
```sh
touch ~/sleep.out && sbatch /vagrant/sleeper.sh && tail -f ~/sleep.out
```

If you are coming from an SGE background, here is a [nice article](https://srcc.stanford.edu/sge-slurm-conversion) for using Slurm.

## Already have a VM?
Then no need to use vagrant to set up a new one. Just provision the VM using ansible
directly as follows:
```bash
cd provisioning/
ansible-playbook playbook.yml -i xnat,
```

Where `xnat` is the Host specified in your `~/.ssh/config`. For example:
```
Host xnat
  HostName 127.0.0.1
  User vagrant
  Port 2222
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/moises/.vagrant.d/boxes/nrgxnat-VAGRANTSLASH-xnatstack-ubuntu1804/1.1.4/virtualbox/vagrant_private_key
  IdentitiesOnly yes
  LogLevel FATAL
```

Note: the settings came from running `vagrant ssh-config`.

