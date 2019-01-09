require 'ostruct'
require 'date_between'
require 'minitest/autorun'

class DateBetweenTest < Minitest::Test

  private def ymd(y,m,d)
    OpenStruct.new(years:y,months:m,days:d)
  end

  def test_today
    assert_equal Date.between(Date.today), ymd(0,0,0)
  end

  def test_next_day
    assert_equal Date.between(Date.new(2000,12,31), Date.new(2001,1,1)), ymd(0,0,1)
  end

  def test_next_month_new_year
    assert_equal Date.between(Date.new(2000,12,31), Date.new(2001,1,31)), ymd(0,1,0)
  end

  def test_next_year_jan1
    assert_equal Date.between(Date.new(2000,1,1), Date.new(2001,1,1)), ymd(1,0,0)
  end

  def test_next_year_dec31
    assert_equal Date.between(Date.new(1999,12,31), Date.new(2000,12,31)), ymd(1,0,0)
  end
end