if [ "$1" == "masters" ]
then
	virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:10 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/master-0.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=master-0.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::master-0.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/master.ign console=ttyS0"
	virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:11 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/master-1.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=master-1.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::master-1.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/master.ign console=ttyS0"
	virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:12 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/master-2.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=master-2.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::master-2.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/master.ign console=ttyS0"
elif [ "$1" == "workers" ]
then
	virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:20 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/worker-0.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=worker-0.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::worker-0.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/worker.ign console=ttyS0"
	virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:21 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/worker-1.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=worker-1.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::worker-1.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/worker.ign console=ttyS0"
elif [ "$1" == "bootstrap" ]
then
virt-install --autostart --graphics=none --noautoconsole --network network=default,mac=12:34:56:00:00:00 --os-type=rhel8.0 --location=iso_rhcos --file=/var/lib/libvirt/images/bootstrap.ocp.kahvi.online --file-size=125  --memory=10240 --vcpus=12 --name=bootstrap.ocp.kahvi.online --extra-args="rd.neednet=1 ip=::192.168.122.1::bootstrap.ocp.kahvi.online:ens3:dhcp: coreos.inst=yes coreos.inst.install_dev=vda coreos.inst.image_url=http://192.168.122.53:8080/rhcos-4.2.0-x86_64-metal-bios.raw.gz coreos.inst.ignition_url=http://192.168.122.53:8080/bootstrap.ign console=ttyS0"
else
echo "Usage: $0 {bootstrap,masters,workers}"
fi