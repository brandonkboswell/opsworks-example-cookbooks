node[:deploy].each do |app_name, deploy|

  script "install_composer_dependencies" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    php composer.phar install
    EOH
  end

end
