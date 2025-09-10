class Company < ApplicationRecord
  has_many :job_offers,
           dependent: :destroy
  accepts_nested_attributes_for :job_offers

  has_rich_text :notes

  alias_attribute :to_s, :name

  validates :name,
            presence: true,
            uniqueness: true

  def phone_href
    return if phone.blank?

    "tel:#{phone.gsub(/^\+/, '00').gsub(/[\ ()\[\]\-_]/, '')}"
  end
end
