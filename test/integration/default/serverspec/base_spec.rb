require 'serverspec'
set :backend, :exec

describe command("getenforce") do
    its(:stdout) { should match 'Disabled' }
end

