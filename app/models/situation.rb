# class ChoicesSetUnlessEnding < ActiveModel::Validator
#   def validate(record)
#     unless record.name.starts_with? 'X'
#       record.errors[:name] << 'Need a name starting with X please!'
#     end
#   end
# end

class Situation < ActiveRecord::Base
  validates :title, presence: true
  validates :sit_rep, presence: true
  # validates_with ChoicesSetUnlessEnding

  validates :choice_1, presence: true,
                    unless: Proc.new { |a| a.ending? }
  validates :choice_2, presence: true,
                    unless: Proc.new { |a| a.ending? }
  validates :choice_1_label, presence: true,
                    unless: Proc.new { |a| a.ending? }
  validates :choice_2_label, presence: true,
                    unless: Proc.new { |a| a.ending? }
end
