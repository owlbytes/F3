require 'spec_helper'

describe FlatsController  do 

  # making sure a basic test will pass
  it "should pass" do
    true
  end

  it "should fail" do
    false
  end

  describe "GET #index" do 

    #creating fake data to test the index method. 
    before do
      @flat_fake_data = 5.times.map{ Flat.create(name: "bucky", rooms: 2, flatdesc: "lorem ipsum", latitude: 51.504444, longitude: -0.086667)}
    end

    it "should assigns @flats" do
      get :index
      expect(assigns[:flats]).to eq(@flat_fake_data)
    end

    it "should respond with instances of flat" do
      get :index
      expect(assigns[:flats].first.class).to_eq(Flat)
    end

    it "should respond with a 200 status" do
      get :index
      expect(response.status).to eq(200)
    end

    it "should render the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do 
    before do
      @flat_fake_data = 5.times.map{ Flat.create(name: "bucky", rooms: 2, flatdesc: "lorem ipsum", latitude: 51.504444, longitude: -0.086667)}
    end

    it "assigns the requested flat to @flat" do
      get :show, {id: @flat_fake_data.id }
      expect(assigns[:flat]).to eq(@flat_fake_data)
    end

    it "renders the :show template" do
      get :show
      expect(response).to render_template("show")
    end

  end  

end

