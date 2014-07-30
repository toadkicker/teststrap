class Widget < ActiveRecord::Base
	validates_presence_of :cog
	validates_presence_of :axle
	validates_presence_of :gear
end
