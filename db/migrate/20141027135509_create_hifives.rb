class CreateHifives < ActiveRecord::Migration
  def change
    create_table :hifives do |t|
      t.references :user, index: true
      t.string :to
      t.string :from
      t.integer :phone
      t.string :message

      t.timestamps
    end
  end
end
