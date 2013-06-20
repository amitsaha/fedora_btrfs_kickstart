virt-install --connect qemu:///system \
    --location=http://download.fedoraproject.org/pub/fedora/linux//development/19/x86_64/os/\
    --initrd-inject=f19.ks --extra-args=ks=file:/f19.ks \
    --name=fedora-19-btrfs --network=network=default,mac=52:54:00:c6:73:9e \
    --ram=2048 --vcpus=2 \
    --disk /var/lib/libvirt/images/fedora-19-btrfs.img,size=20
