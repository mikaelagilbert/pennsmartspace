class UsageTime < ActiveRecord::Base
  belongs_to :study_spot

  def self.to_csv
    attributes = %w{id start end study_spot_id}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |usage_time|
        csv << usage_time.attributes.values_at(*attributes)
      end
    end
  end
end
