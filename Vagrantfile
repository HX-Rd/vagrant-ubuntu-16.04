Vagrant.configure("2") do |config|
  config.vm.define "vimide" do |v|
    v.vm.box = "hx/ubuntu1604"
    v.vbguest.auto_update = false
    v.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  end
end
