class JobLink < ApplicationRecord
  belongs_to :job_offer

  validates :url,
            presence: true,
            uniqueness: { case_sensitive: false }
end
