class Url < ActiveRecord::Base
  self.table_name = 'urls'
  self.primary_key = "id"
  def self.search(search)
    search = search.downcase
    where("LOWER(url) LIKE ? or LOWER(channel) LIKE ? or LOWER(title) LIKE ? or LOWER(description) LIKE ?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%")
  end
end
