require 'spec_helper'


describe User do
  it 'is private by default' do
    user = User.create(:user)
    user.public?.should eq false
  end

  it 'converts the name to Uppercase' do
    user = User.create(:name => "FINAGLE THE BUFFALO")
    user.name.should eq "Finagle the buffalo"
  end
end
