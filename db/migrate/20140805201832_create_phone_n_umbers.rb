class CreatePhoneNUmbers < ActiveRecord::Migration
  def change
    create_table :phone_n_umbers do |t|
      t.string :number
      t.integer :person_id

      t.timestamps
    end
  end
end
