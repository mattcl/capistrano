action :create do
  deploy_path = new_resource.deploy_path
  shared_path = ::File.join(deploy_path, 'shared')
  config_path = ::File.join(shared_path, 'config')
  initializers_path = ::File.join(config_path, 'initializers')

  # create the directory structure
  [
    deploy_path,
    shared_path,
    config_path,
    initializers_path
  ].each do |path|
    directory path do
      owner new_resource.owner
      group new_resource.group
    end
  end

  new_resource.templates.each do |name, info|
    template ::File.join(shared_path, info['path'], name) do
      owner new_resource.owner
      group new_resource.group
      variables(new_resource.default_vars.merge(info['variables']))
    end
  end

  new_resource.updated_by_last_action(true)
end
