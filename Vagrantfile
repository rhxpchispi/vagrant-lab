Vagrant.configure("2") do |config|
    # Ubuntu
    (1..2).each do |i|
        config.vm.define "node-#{i}" do |node|
            node.vm.box = "ubuntu/jammy64"
            node.vm.hostname = "ubuntu-#{i}"
            $default_network_interface = `ip route | awk '/^default/ {printf "%s", $5; exit 0}'`
            node.vm.network "private_network", ip:"192.168.56.10#{i}", bridge: "#$default_network_interface"
            node.vm.provision "shell" do |s|
                ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
                s.inline = <<-SHELL
                echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
                SHELL
            end
        end
    end
    
    # Rocky Linux
    (3..4).each do |i|
        config.vm.define "node-#{i}" do |node|
            node.vm.box = "bento/rockylinux-9"
            node.vm.hostname = "rocky-#{i-2}"
            $default_network_interface = `ip route | awk '/^default/ {printf "%s", $5; exit 0}'`
            node.vm.network "private_network", ip:"192.168.56.10#{i}", bridge: "#$default_network_interface"
            node.vm.provision "shell" do |s|
                ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
                s.inline = <<-SHELL
                echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
                SHELL
            end
        end
    end
end
