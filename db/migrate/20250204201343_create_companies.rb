class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name"
      t.string "city"
      t.string "url"
      t.string "state"


      t.timestamps
    end
  end
end
