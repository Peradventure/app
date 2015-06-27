class Situation < ActiveRecord::Base
  validates :title, presence: true
  validates :sit_rep, presence: true
end
