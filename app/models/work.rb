class Work < ApplicationRecord
  has_many :votes

  def votes
    votes = Vote.where("work_id = ?", self.id)
    puts "vote.all.count", Vote.all.count
    votes
  end
end
