# Vagrantfile building my development environment

Clone my repository in my Surface Book 2 laptop.

```
$ git clone git@github.com:hiratara/private-vagrantfile.git my-development-env
```

Then, run PowerShell(Admin) from start button and `vagrant up`.

```
> cd my-development-env
> vagrant up --providor hyperv
> vagrant ssh-config --host my-development-vm
```

Launch MSYS2 to use tmux(I like copy&paste shortcut keys).
Write to `.ssh/config` and connect to it.

```
$ vim ~/.ssh/config
$ ssh my-development-vm
```
