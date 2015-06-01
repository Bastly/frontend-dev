wget https://bootstrap.pypa.io/get-pip.py 
sudo python get-pip.py
sudo pip install redis
sudo pip install Jinja2
sudo pip install ansible==1.8.4

## MacOSX specific tasks

Include this lines in your `/etc/sshd_config` file, just after the first comment block:

```bash
 Host *
   ForwardAgent yes
```
