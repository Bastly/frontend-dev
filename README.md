# Frontend dev

Frontend dev is the virtual machine configuration we use in [bastly][1] to develop our web products.

## Requirements

In order to use frontend-dev you should check that your local machine meets the requirements

- Machine ready to use virtualization
- SSH key generated and added for Bitbucket
- Vagrant
- Virtual Box

## Setup

1. Install some dependencies:
```bash
wget https://bootstrap.pypa.io/get-pip.py 
sudo python get-pip.py
sudo pip install redis
sudo pip install Jinja2
sudo pip install ansible==1.8.4
```

Also, in Mac OSX you should include this lines in your `/etc/sshd_config` file, just after the first comment block:

```bash
 Host *
   ForwardAgent yes
```

2. Clone this repo machine into your local environment and follow the steps.

3. Execute the `rebuildEnv.zsh` located in the root path of this repo.

4. Connect to the created virtual environment through `vagrant ssh` and start developing.

## Contributing

Contributions, questions and comments are all welcome and encouraged. For code contributions to Bastly User Panel, please see our [Contribution guide][2] before submitting a pull request.

## License

AGPL 3.0 License
Copyright 2015 Bastly

[1]: http://www.bastly.com/
[2]: CONTRIBUTING.md
