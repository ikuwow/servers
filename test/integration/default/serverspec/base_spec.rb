require 'serverspec'
set :backend, :exec

describe command("getenforce") do
    its(:stdout) { should match 'Disabled' }
end

describe commend('date +%Z') do
    its(:stdout) { should match 'JST' }
end
