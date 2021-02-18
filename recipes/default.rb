#
# Cookbook:: shoble
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute "update-upgrade" do
  command "sudo apt-get update"
end

execute "install wget" do
  command  "sudo apt install wget"
end

execute "Install tomcat" do
  command  "wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.43/bin/apache-tomcat-9.0.43.tar.gz"
end


execute "untar the file" do
  command  "sudo tar -xvf apache-tomcat-9.0.43.tar.gz"
end


execute "Copy apache to /opt directory" do
  command  "sudo cp -rf  apache-tomcat-9.0.43 /opt"
  user "ubuntu"
end

execute "install openjdk" do
  command "sudo apt-get install openjdk-8-jdk -y"
end

execute "start script" do
  command "sudo /opt/apache-tomcat-9.0.43/bin/startup.sh"
end
