class InvolvedCompany < ApplicationRecord

  validates :company, uniqueness: { scope: :game, message: "and Game combination already taken" }
  validates :developer, presence: { message: "and Publisher can't be blank" },
                        unless: proc { publisher? }
  validates :publisher, presence: { message: "and Developer can't be blank" },
                        unless: proc { developer? }

  # Associations
  belongs_to :game
  belongs_to :company, counter_cache: :games_count
end
