class JobOffer < ApplicationRecord
  include AASM

  belongs_to :company
  accepts_nested_attributes_for :company

  has_many :job_links,
           dependent: :destroy
  accepts_nested_attributes_for :job_links,
                                reject_if: :all_blank

  has_rich_text :description
  has_rich_text :notes

  alias_attribute :to_s, :title

  validates :state,
            presence: true
  validates :title,
            presence: true

  aasm column: 'state', timestamps: true do
    state :opened, initial: true
    state :applied
    state :interviewing
    state :rejected
    state :pending
    state :accepted
  end
end
