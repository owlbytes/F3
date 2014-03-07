require 'spec_helper'

describe FlatsController  do 

  # making sure a basic test will pass
  it "should pass" do
    true
  end

  it "should fail" do
    false
  end

  # creating "fake" data to test the index method
  describe "GET index" do
    before do
      @flats_fake_data = 5.times.map{ Flat.create(name: "dream flat")}
    end

    it "should assigns @flats" do
      get :index
      expect(assigns[:flats]).to eq(@flats_fake_data)
    end
  end


end
