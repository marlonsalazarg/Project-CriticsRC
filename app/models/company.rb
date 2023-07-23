class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  before_create :default_cover
  validates :country, presence: true
  validates :start_date, presence: true
  # Associations
  has_many :involved_companies, dependent: :destroy
  has_many :games, through: :involved_companies, counter_cache: true
  has_many :critics, as: :criticable, dependent: :destroy

  has_one_attached :cover
  private

  def default_cover
    return if cover.attached?
    
    cover.attach(io: File.open("app/assets/images/sony_cover.png"), filename: "default_cover.png")
  end
end
