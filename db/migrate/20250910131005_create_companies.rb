class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: { unique: true }
      t.text :address
      t.string :website
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
