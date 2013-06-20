Fedora 19 + btrfs + libvirt
---------------------------

Install Fedora 19 using libvirt's virt-install using the accompanying
kickstart file.

Purpose
=======

If you see the kickstart file, you will see that I have created two btrfs
volumes, each consisting of a single device of 1G each. There is no real purpose
other than teaching myself about creating btrfs volumes in an Anaconda kickstart
during installation. And I needed to teach myself that to add support for
creating btrfs volumes to `Beaker
<http://beaker-project.org>`__. (See: `bug
<https://bugzilla.redhat.com/show_bug.cgi?id=973595>`__).

I learned from the Anaconda source code that you *must* label the btrfs partitions as btrfs.<whatever>, i.e.
they should all have a ``btrfs.`` prefix.

Usage
=====

You will need libvirt installed, of course. To create the VM and
kickstart the installation, simply clone this repo and run the shell
script, ``bash create-vm.sh``.
