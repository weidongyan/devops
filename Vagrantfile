Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "172.25.249.10"
  config.vm.hostname = "ops2"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision.yml"
  end
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end
end
