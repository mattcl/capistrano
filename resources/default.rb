actions :create
default_action :create

attribute :deploy_path, kind_of: String, name_attribute: true
attribute :owner,       kind_of: String
attribute :group,       kind_of: String
attribute :templates,   kind_of: Hash
