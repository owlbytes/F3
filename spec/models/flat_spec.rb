
#validating the presence of each part of the model
describe "validations" do  
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:address)}
  it {should validate_presence_of(:rooms)}
  it {should validate_presence_of(:flatdesc)}
  it {should validate_presence_of(:latitude)}
  it {should validate_presence_of(:longitude)}
end

 