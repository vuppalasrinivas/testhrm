class Event < ActiveRecord::Base
	attr_accessor :date_range
	def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
    end
end
