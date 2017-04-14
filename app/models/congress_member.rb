class CongressMember < ActiveRecord::Base
  validates :name, :title, :state, :end, presence: true

  def up_for_election
    "November #{(self.end.to_i - 1)}"
  end
end
