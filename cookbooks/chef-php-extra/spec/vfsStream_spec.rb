require 'chefspec'

describe 'chef-php-extra::vfsStream' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'chef-php-extra::vfsStream' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
