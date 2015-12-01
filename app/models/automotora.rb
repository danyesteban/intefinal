class Automotora < ActiveRecord::Base
  belongs_to :usuario
  validates :codigo, presence: true
  validates :marca, presence: true
  validates :precio, presence: true
  validates :modelo, presence: true
  validates :color, presence: true
  scope :recientes, ->{order("created_at desc")}
end
