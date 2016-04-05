module UsersHelper
  def convert_to_12_hour hour
  meridian = (hour >= 12) ? 'P' : 'A'
  hour = case hour
        when 0, 12
          12
        when 13 .. 23
          hour - 12
        else
          hour
        end
  "#{hour}:00#{meridian}"
  #Credit to the Tin Man on StackOverflow
  end
end
