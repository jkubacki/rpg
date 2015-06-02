class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :games
  has_many :memberships
  has_many :users, through: :memberships

  def to_s
    name
  end
end
