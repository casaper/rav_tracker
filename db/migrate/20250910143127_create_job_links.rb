class CreateJobLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :job_links do |t|
      t.references :job_offer, null: false, foreign_key: true
      t.string :url, index: { unique: true }, null: false
      t.string :hostname
      t.string :title
      t.text :raw_html
      t.text :description
      t.text :content_md

      t.timestamps
    end
  end
end
