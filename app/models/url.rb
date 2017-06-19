# class Url < ApplicationRecord
  class Url < ActiveRecord::Base
  	require 'securerandom'
  	# This is Sinatra! Remember to create a migration!
  	validates :long_url, presence: true
  	validates :long_url, format: {with: /https*:\/\/\s*/, message: "wrong url format ..."}
  	before_save :shorten

  	def shorten
  		self.short_url = SecureRandom.hex(3)

  	end
  end

# end
