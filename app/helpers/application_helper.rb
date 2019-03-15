module ApplicationHelper

  def day_to_date(day)
    if day.to_s.length == 1
      day = "00#{day}"
    elsif day.to_s.length == 2
      day = "0#{day}"
    end
    Date.strptime(day.to_s, "%j").strftime("%B %-d")
  end

  def versions
    # available versions
    {
      "KJV" => "eng-KJV",
      "ESV" => "eng-ESV",
      "MSG" => "eng-MSG",
      "CEV" => "eng-CEV"
    }
  end

end

