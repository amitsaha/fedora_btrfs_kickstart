Fedora 19 + btrfs + libvirt
---------------------------

Install Fedora 19 using libvirt's virt-install using an Anaconda kickstart file.

Purpose
=======

If you see the kickstart file, you will see that I have created two btrfs
volumes, each consisting of a single device of 1G each. There is no real purpose
other than teaching myself about creating btrfs volumes in an Anaconda kickstart
during installation. 

And I needed to teach myself that to add support for
creating btrfs volumes to `Beaker
<http://beaker-project.org>`__. (See: `bug
<https://bugzilla.redhat.com/show_bug.cgi?id=973595>`__).

Notes
=====
I learned from the Anaconda source code that you *must* label the btrfs partitions as btrfs.<whatever>, i.e.
they should all have a ``btrfs.`` prefix.

You will see that I have a repository added to the kickstart file. It is a local repository
having the latest anaconda packages from `koji <http://koji.fedoraproject.org>`__ since the
one in the F19 repository as of this writing had a bug (See the bug
`report
<https://bugzilla.redhat.com/show_bug.cgi?id=975652>`__). Specifically,
you will need anaconda-19.30.6-1 or higher. So, depending on when you
try this, you may or may not need to pull it off Koji. 

If you have to, you may find this `script
<https://github.com/amitsaha/gsoc2012_fbs/blob/master/scripts/dl_package.py>`__
useful. It will pull packages from Koji using the specified NVR string
and create a local repository with those packages in a directory specified.

Usage
=====

You will need `libvirt` installed, of course. To create the VM and
kickstart the installation, simply clone this repo and run the shell
script, ``bash create-vm.sh``.

Resources
=========

- `Virtualization on Fedora <http://fedoraproject.org/wiki/Getting_started_with_virtualization>`__
- `Btrfs fun <http://www.funtoo.org/BTRFS_Fun>`__
- `Anaconda's btrfs support <http://fedoraproject.org/wiki/Anaconda/Kickstart#btrfs>`__
