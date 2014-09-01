class CreatePpps < ActiveRecord::Migration
  def change
    create_table :ppps do |t|
      t.string :name

      t.timestamps
    end
  end
end
