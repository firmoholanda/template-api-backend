class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :owner
      t.string :address
      t.string :country
      t.numeric :tax_number
      t.numeric :fips_code
      t.string :property_type
      t.numeric :year_build
      t.numeric :units
      t.numeric :lot_size
      t.timestamps
    end
  end
end
