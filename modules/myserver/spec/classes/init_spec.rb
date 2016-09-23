require 'spec_helper'
describe 'myserver' do
  context 'with default values for all parameters' do
    it { should contain_class('myserver') }
  end
end
