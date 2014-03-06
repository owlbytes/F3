class Flat < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :rooms, :flatdesc, :address

  # ***Geocoder***

  # the Geocoder documentation on Github states we need to tell Geocoder which attributes are storing the latittude and longtitude values. This turns the lat/lon points into an address. 
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode   


end
