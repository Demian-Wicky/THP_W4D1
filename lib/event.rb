class Event
  attr_accessor :start_date_to_save, :duration_to_save, :title_to_save, :attendees_to_save

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save.to_i # minutes
    @title = title_to_save.to_s
    @attendees = attendees_to_save.to_a
  end

  def postpone_24h
		@start_date += (24 * 60 * 60)
	end

  def end_date
		return @start_date + (@duration * 60)
	end

  def is_past?
		return @start_date < Time.now
	end

  def is_future?
		return !is_past
	end

  def is_soon?
		return (is_past?) && (@start_date > (Time.now - 30*60))
	end

  def to_s
		puts "Event Name : #{@title}"
		puts "Start date : #{@start_date}"
    puts "End Date : #{end_date}"
		puts "Duration   : #{@duration} minutes"
		puts "Attendees : #{@attendees*", "}" # https://stackoverflow.com/questions/3500814/ruby-array-to-string-conversion
	end

end