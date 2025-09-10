class CreateJobOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :job_offers do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title, null: false, default: 'fill me'
      t.string :state, index: true, null: false, default: 'opened'

      t.datetime :opened_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :applied_at
      t.datetime :interviewed_at
      t.datetime :rejected_at
      t.datetime :pending_at
      t.datetime :accepted_at

      t.timestamps
    end
  end
end
