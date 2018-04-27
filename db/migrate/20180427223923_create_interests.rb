class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.column :skill_title, :string
      t.column :skill_description, :string
    end
  end
end
