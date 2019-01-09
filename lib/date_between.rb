require 'date'
require 'ostruct'


class Date

##
# Calculate how many calendar years, months and days are between two dates.
# +date1+ and +date2+ are expected to be the Date instances.
#
# Note that +date1+ need not to precede +date2+.
#
# Return the OpenStruct instance with {+years+, +months+, +days+} fields.
def self.between(date1, date2 = Date.today)
  if date1 > date2
    from = date2
    to = date1
  else
    from = date1
    to = date2
  end
  months = to.day >= from.day ? 0 : -1
  until from.year == to.year && from.month == to.month
    from >>= 1
    months += 1
  end
  years = months/12
  months -= years*12
  days = to.day - from.day
  if days < 0
    x = from << 1
    days = to.day + Date.new(x.year, x.month, -1).day - x.day
  end
  OpenStruct.new(years: years, months: months, days: days)
end

end # Date