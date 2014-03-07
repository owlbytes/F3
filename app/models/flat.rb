class Flat < ActiveRecord::Base

  # ensures only valid data is saved into db
  validates_presence_of :name 
  validates_presence_of :rooms 
  validates_presence_of :flatdesc 
  validates_presence_of :latitude 
  validates_presence_of :longitude 


  #making sure the key values are accessible
  attr_accessible :latitude, :longitude, :name, :rooms, :flatdesc, :address



  # ***Geocoder***

  # the Geocoder documentation on Github states we need to tell Geocoder which attributes are storing the latittude and longtitude values. This turns the lat/lon points into an address. 
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode   


end
