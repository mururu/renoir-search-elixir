defmodule DateTime do
  defrecord Info, [year: 1970,
                   month: 1,
                   day: 1,
                   hour: 0,
                   minute: 0,
                   second: 0]

  def parse(s) do
    regex = %r/^(\d*?)\/(\d*?)\/(\d*?) (\d*?):(\d*?)$/
    parts = nillify(Regex.run(regex, to_binary(s)))
    destructure [_, year,month,day,hour,minute], parts
    Info.new(year: i(year), month: i(month), day: i(day), hour: i(hour), minute: i(minute))
  end

  def wday_name(info) do
    num = wday(info)
    Enum.at! [:monday,:tuesday,:wednesday,:thursday,:friday,:saturday,:sunday], num - 1
  end

  def wday(info) do
    :calendar.day_of_the_week el_date(info)
  end

  def yesterday(Info[year: year, month: month, day: day, hour: hour, minute: minute, second: second]) do
    {year, month, day} = :calendar.gregorian_days_to_date(:calendar.date_to_gregorian_days({year,month,day}) - 1);
    Info.new(year: year, month: month, day: day, hour: hour, minute: minute)
  end

  def tomorrow(Info[year: year, month: month, day: day, hour: hour, minute: minute, second: second]) do
    {year, month, day} = :calendar.gregorian_days_to_date(:calendar.date_to_gregorian_days({year,month,day}) + 1);
    Info.new(year: year, month: month, day: day, hour: hour, minute: minute)
  end

  def holiday?(info) do
    Holidayjp.holiday?(el_date(info))
  end

  def el_datetime(info) do
    {el_date(info), el_time(info)}
  end

  def el_date(Info[year: year, month: month, day: day]) do
    {year, month, day}
  end

  def el_time(Info[hour: hour, minute: minute, second: second]) do
    {hour, minute, second}
  end

  # alias
  defp i(s) do
    binary_to_integer(s)
  end
  defp binary_to_integer(s) do
    list_to_integer(binary_to_list(s))
  end

  defp nillify(l) do
    lc s inlist l do
      if size(s) > 0 do
        s
      else
        nil
      end
    end
  end
end
