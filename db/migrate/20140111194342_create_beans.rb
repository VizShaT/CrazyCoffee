class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
