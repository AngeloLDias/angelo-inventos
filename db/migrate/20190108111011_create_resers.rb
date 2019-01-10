class CreateResers < ActiveRecord::Migration[5.2]
  def change
    create_table :resers do |t|
      t.string :fname
      t.string :lnome
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
