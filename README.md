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
