# Install components:
(https://gist.github.com/tatumroaquin/c6464e1ccaef40fd098a4f31db61ab22)

sudo pacman -S qemu-full qemu-img libvirt virt-install virt-manager virt-viewer \
      edk2-ovmf dnsmasq swtpm guestfs-tools libosinfo tuned


## Add current user to 'libvirt' group:
sudo usermod -aG libvirt $USER

## update network configuration file:
sudo vim /etc/libvirt/network.conf

add:
firewall_backend = "iptables"

## Download guest tools:

Go to: https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/?C=M;O=D ,
and download the latest iso file for example: "/virtio-win-0.1.285-1/virtio-win-0.1.285.iso"

# Install FreeRDP (optional):
sudo pacman -S freerdp

execute:
xfreerdp3 /v:192.168.122.123 /u:gdfg /dynamic-resolution /clipboard /multimon /f
