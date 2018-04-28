class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.column :contact_title, :string
      t.column :contact_description, :string
    end
  end
end
