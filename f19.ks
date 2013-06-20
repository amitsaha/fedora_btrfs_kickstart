url --url=http://mirror.aarnet.edu.au/pub/fedora/linux/development/19/x86_64/os/
repo --name=local --baseurl=http://10.64.40.188:8080

auth --useshadow --enablemd5
firewall --disable
firstboot --disable
clearpart --all --initlabel

part /boot --size 200 --recommended --asprimary
part / --size 1024 --grow
part swap --recommended
 
# create two btrfs partitions and volumes with each of these

part btrfs.mnt_testarea1 --size=1024
btrfs /mnt/testarea1 --label=mnt_testarea1 btrfs.mnt_testarea1

part btrfs.mnt_testarea2 --size=1024
btrfs /mnt/testarea2 --label=mnt_testarea2 btrfs.mnt_testarea2

bootloader --location=mbr
keyboard us
lang en_US
timezone America/New_York
install
reboot

%packages
python3
%end

# root pw: fedora
rootpw --iscrypted $1$I1lI.tL5$qOMpgkPrJIxc2vc29oHh./

%post
set -x -v
exec 1>/root/ks-post.log 2>&1

%end
