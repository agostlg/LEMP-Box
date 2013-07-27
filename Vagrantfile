Vagrant::Config.run do  | config |
	config.vm.box = "precise32"
 	config.vm.box_url = "http://files.vagrantup.com/precise32.box"

	config.vm.customize ["modifyvm", :id, "--memory", "512"]	

	config.vm.network :hostonly, "33.33.33.33"
	config.vm.share_folder "webroot" , "/home/vagrant/webroot", "./webroot/", :nfs => true 
 
 	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = ["cookbooks"]
		chef.add_recipe "apt"
		chef.add_recipe "build-essential"
		chef.add_recipe "mysql::server"
		chef.add_recipe "nginx"
		chef.add_recipe "symfony-app"
		chef.add_recipe "php"
		chef.add_recipe "php::module_apc"
		chef.add_recipe "php::module_curl"
		chef.add_recipe "php::module_gd"
		chef.add_recipe "php::module_mysql"		
		chef.add_recipe "chef-php-extra::xdebug"
		chef.add_recipe "chef-php-extra::PHPUnit"
		chef.add_recipe "php-fpm"
		chef.add_recipe "vim"
		
		chef.json = {
			"mysql" => { 
				"server_root_password" 	=> "password",
				"bind_address"			=> "33.33.33.33",
				"allow_remote_root" 	=> true
			},
			"xdebug" => {
				"remote_host" 	=> "33.33.33.1",
				"idekey" 		=> "netbeans-xdebug"
			}
	  	}
	end
end
