module Merb
  module GlobalHelpers
    def timezone_select(name, attrs = {})
      now = Time.now
      options = TZInfo::Timezone.all.map do |tz|
        period = tz.period_for_utc(now)
        abbrev = period.abbreviation
        hour = period.utc_offset.to_i / 3600
        min = (period.utc_offset - hour*3600) / 60
        [tz.name, "%+03d:%02d #{tz.name} (#{abbrev})" % [hour, min]]
      end.sort_by{|(key, value)| value}

      options.unshift([nil, "Default Time Zone"])
      form_contexts.last.send :update_bound_select, name, attrs
      select name, attrs.merge(:collection => options)
    end
  end
end
